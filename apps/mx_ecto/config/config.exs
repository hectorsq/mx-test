# Since configuration is shared in umbrella projects, this file
# should only configure the :mx_ecto application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :mx_ecto,
  ecto_repos: [MxEcto.Repo]

import_config "#{Mix.env()}.exs"
