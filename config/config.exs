# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :fullstack_elixir_react,
  ecto_repos: [FullstackElixirReact.Repo]

# Configures the endpoint
config :fullstack_elixir_react, FullstackElixirReactWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BYd7uUARk1Bv+0bY8mwHNXQT+luKtxkkDm3z9Spqkwm4DE86XkWdi9a0s0WXN70x",
  render_errors: [view: FullstackElixirReactWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: FullstackElixirReact.PubSub,
  live_view: [signing_salt: "UDvZ8fre"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
