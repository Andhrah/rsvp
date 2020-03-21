# create `dev.secret.exs` file in the root folder and set it up
# with the data below.

""" use Mix.Config

# Configures the endpoint
config :rsvp_web, RsvpWeb.Endpoint,
  secret_key_base: run `mix phx.gen.secret` to generate a secret_key_base
"""

"""
# Configure your database
config :rsvp_web, RsvpWeb.Repo,
  username: # use your dev database username here,
  password: # use your dev database password here,
  database: # use your dev database name here,
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10
"""