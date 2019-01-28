# Since configuration is shared in umbrella projects, this file
# should only configure the :br_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :br_web,
  ecto_repos: [MxEcto.Repo],
  generators: [context_app: false]

# Configures the endpoint
config :br_web, BrWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3K6ujXO3vcxbM8V4Sea0oFTCQHo90nljY28I4OGAfBFr+p8Sa03Pp8NwUqvr+Uua",
  render_errors: [view: BrWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BrWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
