defmodule ExdailyMealsWeb.UsersView do
  use ExdailyMealsWeb, :view

  alias ExdailyMeals.User

  def render("create.json", %{user: %User{} = user}) do
    %{
      message: "User created",
      user: user
    }
  end

  def render("user.json", %{user: %User{} = user}), do: %{user: user}
end
