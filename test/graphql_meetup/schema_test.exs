defmodule GraphqlMeetup.SchemaTest do
  use ExUnit.Case

  alias GraphqlMeetup.Schema

  test "it resolves posts with authors" do
    query = "../posts.graphql" |> Path.expand(__ENV__.file) |> File.read!()

    result = Absinthe.run!(query, Schema)

    assert %{
             data: %{
               "posts" => [
                 %{"author" => %{"email" => _}, "body" => _, "id" => _, "title" => _} | _
               ]
             }
           } = result

    assert 40 = length(result.data["posts"])
  end

  test "it resolves a user" do
    query = "../user.graphql" |> Path.expand(__ENV__.file) |> File.read!()

    result = Absinthe.run!(query, Schema)

    assert %{data: %{"user" => %{"email" => _}}} = result
  end
end
