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

  test "it resolves the other author's posts" do
    query = "../posts_with_nested_posts.graphql" |> Path.expand(__ENV__.file) |> File.read!()

    result = Absinthe.run!(query, Schema)

    assert %{
             data: %{
               "posts" => [
                 %{
                   "author" => %{
                     "email" => _,
                     "posts" => [
                       %{"title" => _},
                       %{"title" => _},
                       %{"title" => _},
                       %{"title" => _}
                     ]
                   },
                   "title" => _
                 }
                 | _
               ]
             }
           } = result
  end

  test "query with two users and a list of posts with author" do
    query = "../parallel_posts_and_two_users.graphql" |> Path.expand(__ENV__.file) |> File.read!()

    result = Absinthe.run!(query, Schema)

    assert %{
             data: %{
               "posts" => [%{"author" => %{"name" => _}, "title" => _} | _],
               "user" => %{"name" => _},
               "anotherUser" => %{"name" => _}
             }
           } = result
  end

  test "resolving separate arguments on the same field" do
    query = "../pages.graphql" |> Path.expand(__ENV__.file) |> File.read!()

    result = Absinthe.run!(query, Schema)

    assert %{
             data: %{
               "firstPage" => [_, _],
               "thirdPage" => [_, _]
             }
           } = result
  end

  test "resolves posts with author and comments" do
    query =
      "../posts_with_author_and_comments.graphql" |> Path.expand(__ENV__.file) |> File.read!()

    result = Absinthe.run!(query, Schema)

    assert %{
             data: %{
               "posts" => [
                 %{
                   "author" => %{"email" => _},
                   "title" => _,
                   "comments" => []
                 },
                 %{
                   "author" => %{"email" => _},
                   "comments" => [],
                   "title" => _
                 }
               ]
             }
           } = result
  end

  test "resolves user not needed" do
    query = "../user_not_needed.graphql" |> Path.expand(__ENV__.file) |> File.read!()

    result = Absinthe.run!(query, Schema)

    assert %{
             data: %{
               "user" => %{
                 "posts" => [
                   %{"author" => %{"id" => _}}
                   | _
                 ]
               }
             }
           } = result
  end
end
