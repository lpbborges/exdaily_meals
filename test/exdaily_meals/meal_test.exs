defmodule ExdailyMeals.MealTest do
  use ExdailyMeals.DataCase, async: true

  import ExdailyMeals.Factory

  alias Ecto.Changeset
  alias ExdailyMeals.Meal

  describe "changeset/2" do
    test "when all params are valid, returns a valid changeset" do
      params = build(:meal_params)

      response = Meal.changeset(params)

      assert %Changeset{changes: %{calories: 100, description: "Meat"}, valid?: true} = response
    end

    test "when updating a changeset, returns a valid changeset with the given changes" do
      params = build(:meal_params)

      update_params = %{calories: 150}

      response =
        params
        |> Meal.changeset()
        |> Meal.changeset(update_params)

      assert %Changeset{changes: %{calories: 150, description: "Meat"}, valid?: true} = response
    end

    test "when there are some error, returns an invalid changeset" do
      params = build(:meal_params, %{calories: -1})

      response = Meal.changeset(params)

      expected_response = %{calories: ["must be greater than 0"]}

      assert errors_on(response) == expected_response
    end
  end
end
