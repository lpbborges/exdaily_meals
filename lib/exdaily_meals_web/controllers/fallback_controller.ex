defmodule ExdailyMealsWeb.FallbackController do
  use ExdailyMealsWeb, :controller

  alias ExdailyMeals.Error
  alias ExdailyMealsWeb.ErrorView

  def call(conn, {:error, %Error{status: status, result: result}}) do
    conn
    |> put_status(status)
    |> put_view(ErrorView)
    |> render("error.json", result: result)
  end
end
