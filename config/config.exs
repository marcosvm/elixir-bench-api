# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elixir_bench, ecto_repos: [ElixirBench.Repo]

# Configures the endpoint
config :elixir_bench, ElixirBenchWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "T3V6SzBeO9ItbppdTUPuT/RK11O21rhBDKBcklh/0l58bD16hKRC1RzXMapYv1wy",
  render_errors: [view: ElixirBenchWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: ElixirBench.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :elixir_bench, :default_elixir_version, {:system, "DEFAULT_ELIXIR_VERSION", "1.5.2"}

config :elixir_bench,
       :supported_elixir_versions,
       {:system, :list, "SUPPORTED_ELIXIR_VERSIONS", ["1.5.2"]}

config :elixir_bench, :default_erlang_version, {:system, "DEFAULT_ERLANG_VERSION", "20.1.2"}

config :elixir_bench,
       :supported_erlang_versions,
       {:system, :list, "SUPPORTED_ERLANG_VERSIONS", ["20.1.2"]}

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
