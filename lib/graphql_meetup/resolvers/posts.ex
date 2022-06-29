defmodule GraphqlMeetup.Resolvers.Posts do
  alias GraphqlMeetup.Store

  require GraphqlMeetup.Macros

  import GraphqlMeetup.Macros

  def list(_parent, _args, _ctx) do
    trace do
      {:ok, Store.posts()}
    end
  end
end
