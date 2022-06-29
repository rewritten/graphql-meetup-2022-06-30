defmodule GraphqlMeetup.Resolvers.Posts do
  alias GraphqlMeetup.Store

  require GraphqlMeetup.Macros

  import GraphqlMeetup.Macros

  def list(%{id: id}, _args, _ctx) do
    trace do
      {:ok, Store.posts() |> Enum.filter(&(&1.author == id))}
    end
  end

  def list(_parent, _args, _ctx) do
    trace do
      {:ok, Store.posts()}
    end
  end

  def by_author(_, ids) do
    trace do
      Store.posts()
      |> Enum.filter(&(&1.author in ids))
      |> Enum.group_by(& &1.author)
    end
  end
end
