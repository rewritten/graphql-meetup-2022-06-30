defmodule GraphqlMeetup.Schema do
  use Absinthe.Schema

  alias GraphqlMeetup.Resolvers

  query do
    field :posts, list_of(:post) do
      resolve &Resolvers.Posts.list/3
    end

    field :user, :user do
      arg :id, non_null(:id)

      resolve fn _, %{id: id}, _ ->
        batch({Resolvers.Users, :by_id}, id, fn map -> {:ok, Map.get(map, id)} end)
      end
    end
  end

  object :post do
    field :id, :id
    field :title, :string
    field :body, :string

    field :author, :user do
      resolve fn %{author: id}, _, _ ->
        batch({Resolvers.Users, :by_id}, id, fn map -> {:ok, Map.get(map, id)} end)
      end
    end
  end

  object :user do
    field :id, :id
    field :name, :string
    field :email, :string

    field :posts, list_of(:post) do
      resolve fn %{id: id}, _, _ ->
        batch({Resolvers.Posts, :by_author}, id, fn map -> {:ok, Map.get(map, id)} end)
      end
    end
  end
end
