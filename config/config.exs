# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of the Config module.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
import Config

config :server, Server.Repo,
  database: "rsvp",
  username: "postgres",
  password: "password",
  hostname: "localhost"

config :server, ecto_repos: [Server.Repo]

config :client,
  generators: [context_app: false]

# Configures the endpoint
config :client, Client.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: Client.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Client.PubSub,
  live_view: [signing_salt: "yWvjESlB"]

# Configure esbuild (the version is required)
config :esbuild,
  version: "0.14.29",
  default: [
    args:
      ~w(js/app.js --bundle --target=es2017 --outdir=../priv/static/assets --external:/fonts/* --external:/images/*),
    cd: Path.expand("../apps/client/assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

# Sample configuration:
#
#     config :logger, :console,
#       level: :info,
#       format: "$date $time [$level] $metadata$message\n",
#       metadata: [:user_id]
#

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason
# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
