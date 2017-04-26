# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :subvault_web,
  namespace: Subvault.Web,
  ecto_repos: [Subvault.Repo]

# Configures the endpoint
config :subvault_web, Subvault.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wza5DvDSVzY3dm3ipQmIqiOBUkAKV/cGDqfPzihKQsvxJQt7mAcCf4lR+ePdL8DK",
  render_errors: [view: Subvault.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Subvault.Web.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :subvault_web, :generators,
  context_app: :subvault

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
