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

  def by_id(_, ids) do
    trace do
      Store.users()
      |> Enum.filter(&(&1.id in ids))
      |> Map.new(&{&1.id, &1})
    end
  end
end
