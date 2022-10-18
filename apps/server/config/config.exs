import Config

# Configure your database
config :server, Server.Repo,
  username: "postgres",
  password: "password",
  hostname: "localhost",
  database: "rsvp",
  # stacktrace: true,
  # show_sensitive_data_on_connection_error: true,
  # pool_size: 10

# config :server, ecto_repos: [Server.Repo]
config :server, ecto_repos: [Server.Repo]
