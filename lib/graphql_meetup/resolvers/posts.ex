defmodule GraphqlMeetup.Resolvers.Posts do
  alias GraphqlMeetup.Store

  require GraphqlMeetup.Macros

  import GraphqlMeetup.Macros
  import Absinthe.Resolution.Helpers

  def list(%{id: id}, _args, _ctx) do
    batch({__MODULE__, :by_author_batch_fun}, id, &{:ok, Map.get(&1, id, [])})
  end

  def list(_parent, args, _ctx) do
    batch({__MODULE__, :all_batch_fun}, args, &{:ok, Map.get(&1, args)})
  end

  # phony args for batching
  def all_batch_fun(_, list_of_args) do
    trace do
      posts = Store.posts()

      Map.new(list_of_args, fn %{limit: limit, offset: offset} = args ->
        {args, posts |> Enum.drop(offset) |> Enum.take(limit)}
      end)
    end
  end

  def by_author_batch_fun(_, ids) do
    trace do
      Store.posts()
      |> Enum.filter(&(&1.author in ids))
      |> Enum.group_by(& &1.author)
    end
  end
end
