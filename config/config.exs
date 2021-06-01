# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bank_web,
  ecto_repos: [BankWeb.Repo]

# Configures the endpoint
config :bank_web, BankWebWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ECDt9Xv88Nb3fw6CYt9oyV2DaIcZD3a0ikkjN/8fHb2sopFYWfoKUwW5ZaSoUEiA",
  render_errors: [view: BankWebWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: BankWeb.PubSub,
  live_view: [signing_salt: "CogX6cZa"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
