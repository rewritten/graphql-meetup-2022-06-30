defmodule GraphqlMeetup.Resolvers.Users do
  alias GraphqlMeetup.Store

  require GraphqlMeetup.Macros

  import GraphqlMeetup.Macros

  def find(%{author: id}, _args, _ctx) do
    trace do
      user = Store.users() |> Enum.find(&(&1.id == id))
      {:ok, user}
    end
  end

  def find(_parent, %{id: id}, _ctx) do
    trace do
      user = Store.users() |> Enum.find(&(&1.id == id))
      {:ok, user}
    end
  end
end
