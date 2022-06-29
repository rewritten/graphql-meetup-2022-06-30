# ensure everything is compiled, to avoid measuring compilation time during
# the tests.
Code.ensure_compiled!(GraphqlMeetup.Store)
Code.ensure_compiled!(GraphqlMeetup.Schema)
Code.ensure_compiled!(GraphqlMeetup.Resolvers.Posts)
Code.ensure_compiled!(GraphqlMeetup.Resolvers.Users)

ExUnit.start()
