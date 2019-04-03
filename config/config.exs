# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :game_of_life_v2,
  ecto_repos: [GameOfLifeV2.Repo]

# Configures the endpoint
config :game_of_life_v2, GameOfLifeV2Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "a9/evaJ7+F2D3nkFsTn1YohngZjrXcwtYfd7s7t87jf8abjhuNb67qKaXWvZK3A6",
  render_errors: [view: GameOfLifeV2Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GameOfLifeV2.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
