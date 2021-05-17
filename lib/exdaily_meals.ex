defmodule ExdailyMeals do
  alias ExdailyMeals.Meals.Create, as: MealCreate
  alias ExdailyMeals.Meals.Delete, as: MealDelete
  alias ExdailyMeals.Meals.Get, as: MealGet
  alias ExdailyMeals.Meals.Update, as: MealUpdate

  alias ExdailyMeals.Users.Create, as: UserCreate
  alias ExdailyMeals.Users.Delete, as: UserDelete
  alias ExdailyMeals.Users.Get, as: UserGet
  alias ExdailyMeals.Users.Update, as: UserUpdate

  defdelegate create_meal(params), to: MealCreate, as: :call
  defdelegate delete_meal(params), to: MealDelete, as: :call
  defdelegate get_meal_by_id(params), to: MealGet, as: :by_id
  defdelegate update_meal(params), to: MealUpdate, as: :call

  defdelegate create_user(params), to: UserCreate, as: :call
  defdelegate delete_user(params), to: UserDelete, as: :call
  defdelegate get_user_by_id(params), to: UserGet, as: :by_id
  defdelegate update_user(params), to: UserUpdate, as: :call
end
