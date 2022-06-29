defmodule GraphqlMeetup.Schema do
  use Absinthe.Schema

  query do
    field :posts, list_of(:post)

    field :user, :user do
      arg :id, non_null(:id)
    end
  end

  object :post do
    field :id, :id
    field :title, :string
    field :body, :string

    field :author, :user
  end

  object :user do
    field :id, :id
    field :name, :string
    field :email, :string

    field :posts, list_of(:post)
  end
end
