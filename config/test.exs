import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :client, Client.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "LmUZQY25Ya7qWM5gWmnaWeL5Reqpl/k8bR4B5HNJX5jViA0pTe9Zxns8JGjnf9Cv",
  server: false
