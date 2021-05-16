defmodule ExdailyMeals.Factory do
  use ExMachina.Ecto, repo: ExdailyMeals.Repo

  alias ExdailyMeals.Meal

  def meal_params_factory do
    %{
      calories: 100,
      description: "Meat"
    }
  end

  def meal_factory do
    %Meal{
      calories: 100,
      description: "Meat",
      id: "98063718-b42d-46f1-a1fe-1d8e1c0c936a"
    }
  end
end
