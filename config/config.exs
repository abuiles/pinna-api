# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :pinna,
  ecto_repos: [Pinna.Repo]

# Configures the endpoint
config :pinna, PinnaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zpQMTNZxzeIjxqj1MRomQZY3bFaLFzx2L2iQUl0bcbJryoEVsV3aDKVhC8Jr/i9K",
  render_errors: [view: PinnaWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Pinna.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
