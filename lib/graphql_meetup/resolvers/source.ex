defmodule GraphqlMeetup.Resolvers.Source do
  defstruct resolved: %{}, pending: %{}, load_fun: nil

  import GraphqlMeetup.Macros

  def load(%{pending: pending, resolved: resolved} = src, {_field, _args}, %{id: id} = _parent)
      when is_map_key(pending, id) or is_map_key(resolved, id) do
    src
  end

  def load(src, {_field, _args}, %{id: id} = _parent) do
    put_in(src, [Access.key(:pending), id], id)
  end

  def fetch(src, {field, _args}, %{id: id} = _parent) do
    {:ok, get_in(src.resolved, [id, field])}
  end

  def run(src) do
    trace do
      ids = Map.keys(src.pending)
      users = src.load_fun.() |> Enum.filter(&(&1.id in ids))
      updated_resolved = users |> Map.new(&{&1.id, &1}) |> Map.merge(src.resolved)
      %{src | resolved: updated_resolved, pending: %{}}
    end
  end

  def pending_batches?(src) do
    map_size(src.pending) > 0
  end

  defimpl Dataloader.Source, for: GraphqlMeetup.Resolvers.Source do
    def fetch(src, batch_key, item_key) do
      GraphqlMeetup.Resolvers.Source.fetch(src, batch_key, item_key)
    end

    def load(src, batch_key, item_key) do
      GraphqlMeetup.Resolvers.Source.load(src, batch_key, item_key)
    end

    def run(src) do
      GraphqlMeetup.Resolvers.Source.run(src)
    end

    def pending_batches?(src) do
      GraphqlMeetup.Resolvers.Source.pending_batches?(src)
    end

    # used for warming
    def put(src, _, _, _) do
      src
    end

    def timeout(_src), do: 10000
  end
end
