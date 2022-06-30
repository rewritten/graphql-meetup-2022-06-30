defmodule GraphqlMeetup.Resolvers.Users do
  alias GraphqlMeetup.Store

  require GraphqlMeetup.Macros

  import GraphqlMeetup.Macros
  import Absinthe.Resolution.Helpers

  def name(%{id: id}, _args, _ctx) do
    batch({__MODULE__, :by_id}, id, &{:ok, Map.get(&1, id).name})
  end

  def email(%{id: id}, _args, _ctx) do
    batch({__MODULE__, :by_id}, id, &{:ok, Map.get(&1, id).email})
  end

  def by_id(_, ids) do
    trace do
      Store.users()
      |> Enum.filter(&(&1.id in ids))
      |> Map.new(&{&1.id, &1})
    end
  end
end
