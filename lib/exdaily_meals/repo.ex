defmodule ExdailyMeals.Repo do
  use Ecto.Repo,
    otp_app: :exdaily_meals,
    adapter: Ecto.Adapters.Postgres
end
