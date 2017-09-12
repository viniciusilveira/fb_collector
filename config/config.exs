# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :fb_collector,
  ecto_repos: [FbCollector.Repo]

# Configures the endpoint
config :fb_collector, FbCollector.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "g+uZCMcETX3PQnGY/m8zFqIeTQdsbvy1BFALWTsI2dvq2l0hPdFQuGZCd0W/F07i",
  render_errors: [view: FbCollector.ErrorView, accepts: ~w(json)],
  pubsub: [name: FbCollector.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
