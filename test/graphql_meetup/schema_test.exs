defmodule GraphqlMeetup.SchemaTest do
  use ExUnit.Case

  alias GraphqlMeetup.Schema

  test "it resolves" do
    query = "../query.graphql" |> Path.expand(__ENV__.file) |> File.read!()

    result = Absinthe.run!(query, Schema)

    assert result == %{data: %{"posts" => nil}}
  end
end
