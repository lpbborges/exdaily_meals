# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :exdaily_meals,
  ecto_repos: [ExdailyMeals.Repo]

config :exdaily_meals, ExdailyMeals.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

# Configures the endpoint
config :exdaily_meals, ExdailyMealsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZWr4DtJ7IVTOsunK7YIlKG/yxnTpYuDKrrHwIOmd4OmOA7jYeLaAKD9wyrZbJ4yL",
  render_errors: [view: ExdailyMealsWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ExdailyMeals.PubSub,
  live_view: [signing_salt: "uT31oOAs"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
