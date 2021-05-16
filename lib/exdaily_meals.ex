defmodule ExdailyMeals do
  alias ExdailyMeals.Meals.Create, as: MealCreate
  alias ExdailyMeals.Meals.Delete, as: MealDelete
  alias ExdailyMeals.Meals.Get, as: MealGet
  alias ExdailyMeals.Meals.Update, as: MealUpdate

  defdelegate create_meal(params), to: MealCreate, as: :call
  defdelegate delete_meal(params), to: MealDelete, as: :call
  defdelegate get_meal_by_id(params), to: MealGet, as: :by_id
  defdelegate update_meal(params), to: MealUpdate, as: :call
end
