defmodule GraphqlMeetup.Resolvers.Posts do
  alias GraphqlMeetup.Store

  require GraphqlMeetup.Macros

  import GraphqlMeetup.Macros
  import Absinthe.Resolution.Helpers

  def list(%{id: id}, _args, _ctx) do
    batch({__MODULE__, :by_author_batch_fun}, id, &{:ok, Map.get(&1, id)})
  end

  def list(_parent, _args, _ctx) do
    batch({__MODULE__, :all_batch_fun}, nil, &{:ok, &1})
  end

  # phony args for batching
  def all_batch_fun(_, _) do
    trace do
      Store.posts()
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
