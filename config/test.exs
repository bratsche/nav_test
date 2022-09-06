import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :nav_test, NavTestWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "ob3/338mhpG+U1QSzJM7dYlOBhjfTx3JCgoDNjA5Iy4juTVyLGb63btPIZ7QIZLg",
  server: false

# In test we don't send emails.
config :nav_test, NavTest.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
