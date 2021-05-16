defmodule ExdailyMeals.MealsControllerTest do
  use ExdailyMealsWeb.ConnCase, async: true

  import ExdailyMeals.Factory

  describe "create/2" do
    test "when all params are valid, creates the meal", %{conn: conn} do
      params = %{
        "calories" => 100,
        "description" => "Meat"
      }

      response =
        conn
        |> post(Routes.meals_path(conn, :create, params))
        |> json_response(:created)

      assert %{
               "message" => "Meal created",
               "meal" => %{
                 "calories" => 100,
                 "description" => "Meat",
                 "id" => _id
               }
             } = response
    end

    test "when there is some error, returns the error", %{conn: conn} do
      params = %{
        "calories" => -1,
        "description" => "Meat"
      }

      response =
        conn
        |> post(Routes.meals_path(conn, :create, params))
        |> json_response(:bad_request)

      expected_response = %{"message" => %{"calories" => ["must be greater than 0"]}}

      assert response == expected_response
    end
  end

  describe "delete/2" do
    test "whent there is a meal with the given id, deletes the meal", %{conn: conn} do
      id = "98063718-b42d-46f1-a1fe-1d8e1c0c936a"

      insert(:meal)

      response =
        conn
        |> delete(Routes.meals_path(conn, :delete, id))
        |> response(:no_content)

      assert response == ""
    end
  end
end
