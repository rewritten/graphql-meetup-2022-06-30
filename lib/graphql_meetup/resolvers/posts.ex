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
end
