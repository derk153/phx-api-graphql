# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :phx_api_graphql, PhxApiGraphqlWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SI7jMsgX/vaYP31Hj7d8yHZdzfh2vQqihdWLmweFf92vGzvrBg9b5s7vnP20VY6k",
  render_errors: [view: PhxApiGraphqlWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: PhxApiGraphql.PubSub,
  live_view: [signing_salt: "I7Z3fkJO"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
