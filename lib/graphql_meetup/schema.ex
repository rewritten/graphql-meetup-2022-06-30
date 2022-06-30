defmodule GraphqlMeetup.Schema do
  use Absinthe.Schema

  alias GraphqlMeetup.Resolvers

  import Absinthe.Resolution.Helpers

  query do
    field :posts, list_of(:post) do
      arg :limit, :integer, default_value: 10
      arg :offset, :integer, default_value: 0
      resolve &Resolvers.Posts.list/3
    end

    field :user, :user do
      arg :id, non_null(:id)

      resolve fn _, %{id: id}, _ -> {:ok, %{id: id}} end
    end
  end

  object :post do
    field :id, :id
    field :title, :string
    field :body, :string

    field :author, :user do
      resolve fn %{author: id}, _, _ -> {:ok, %{id: id}} end
    end

    field :comments, list_of(:comment) do
      resolve &Resolvers.Comments.list/3
    end
  end

  object :user do
    field :id, :id
    field :name, :string, resolve: dataloader(:users)
    field :email, :string, resolve: dataloader(:users)

    field :posts, list_of(:post) do
      resolve &Resolvers.Posts.list/3
    end
  end

  object :comment do
    field :id, :id
    field :body, :string

    field :post, :post
    field :author, :user
  end

  def context(ctx) do
    loader =
      Dataloader.new()
      |> Dataloader.add_source(:users, %GraphqlMeetup.Resolvers.Source{
        load_fun: &GraphqlMeetup.Store.users/0
      })

    Map.put(ctx, :loader, loader)
  end

  def plugins do
    [Absinthe.Middleware.Dataloader] ++ Absinthe.Plugin.defaults()
  end
end
