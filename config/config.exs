# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :nlw4,
  ecto_repos: [Nlw4.Repo]

# Configures the endpoint
config :nlw4, Nlw4Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1hkius+iGY6oxZiBsOD6b4UNMff8Z1Qob+Z4rteofcKJvTyZeZ8GwNZ/eFXScBSn",
  render_errors: [view: Nlw4Web.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Nlw4.PubSub,
  live_view: [signing_salt: "JsnMe+lK"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
