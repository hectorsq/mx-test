# Since configuration is shared in umbrella projects, this file
# should only configure the :mx_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :mx_web,
  ecto_repos: [MxWeb.Repo],
  generators: [context_app: false]

# Configures the endpoint
config :mx_web, MxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PLrZQO1Oha9dm2BqVCt9BFudC3vD74cCU+10DVDY5Bf1u5D7G2z73yzK/k2PiMic",
  render_errors: [view: MxWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MxWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
