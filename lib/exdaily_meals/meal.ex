defmodule ExdailyMeals.Meal do
  use Ecto.Schema

  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}

  @required_params [:calories, :description]

  @derive {Jason.Encoder, only: [:id, :calories, :description]}

  schema "meals" do
    field :calories, :integer
    field :date, :naive_datetime
    field :description, :string

    timestamps()
  end

  def changeset(struct \\ %__MODULE__{}, params) do
    struct
    |> cast(params, @required_params)
    |> validate_required(@required_params)
    |> validate_number(:calories, greater_than: 0)
  end
end
