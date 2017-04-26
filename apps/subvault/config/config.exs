use Mix.Config

config :subvault, ecto_repos: [Subvault.Repo]

import_config "#{Mix.env}.exs"
