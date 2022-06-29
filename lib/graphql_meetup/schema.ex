defmodule GraphqlMeetup.Schema do
  use Absinthe.Schema

  alias GraphqlMeetup.Resolvers

  query do
    field :posts, list_of(:post) do
      resolve &Resolvers.Posts.list/3
    end

    field :user, :user do
      arg :id, non_null(:id)

      resolve &Resolvers.Users.find/3
    end
  end

  object :post do
    field :id, :id
    field :title, :string
    field :body, :string

    field :author, :user do
      resolve &Resolvers.Users.find/3
    end
  end

  object :user do
    field :id, :id
    field :name, :string
    field :email, :string

    field :posts, list_of(:post) do
      resolve &Resolvers.Posts.list/3
    end
  end
end
