use Mix.Config

# Configure your database
config :subvault, Subvault.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "subvault_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
