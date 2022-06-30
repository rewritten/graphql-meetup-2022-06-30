defmodule GraphqlMeetup.Resolvers.Comments do
  alias GraphqlMeetup.Store

  require GraphqlMeetup.Macros

  import GraphqlMeetup.Macros
  import Absinthe.Resolution.Helpers

  def list(%{id: id}, _args, _ctx) do
    batch({__MODULE__, :by_post_batch_fun}, id, &{:ok, Map.get(&1, id, [])})
  end

  def by_post_batch_fun(_, ids) do
    trace do
      Store.comments()
      |> Enum.filter(&(&1.post in ids))
      |> Enum.group_by(& &1.post)
    end
  end
end
