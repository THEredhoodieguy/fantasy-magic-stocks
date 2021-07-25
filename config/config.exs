# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :fantasymagicstocks,
  ecto_repos: [Fantasymagicstocks.Repo]

# Configures the endpoint
config :fantasymagicstocks, FantasymagicstocksWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1QWABb2argv/79yYTYlJYJOZ0/hd4nEMImy9RpDwfTE02UocKMjlnUwgD2f7Hb8U",
  render_errors: [view: FantasymagicstocksWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Fantasymagicstocks.PubSub,
  live_view: [signing_salt: "NWhXfa7q"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
