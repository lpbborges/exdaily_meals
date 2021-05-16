defmodule ExdailyMealsWeb.MealsViewTest do
  use ExdailyMealsWeb.ConnCase, async: true

  import Phoenix.View
  import ExdailyMeals.Factory

  alias ExdailyMeals.Meal
  alias ExdailyMealsWeb.MealsView

  test "renders create.json" do
    meal = build(:meal)

    response = render(MealsView, "create.json", meal: meal)

    assert %{
             meal: %Meal{
               calories: 100,
               date: nil,
               description: "Meat",
               id: "98063718-b42d-46f1-a1fe-1d8e1c0c936a",
               inserted_at: nil,
               updated_at: nil
             },
             message: "Meal created"
           } = response
  end
end
