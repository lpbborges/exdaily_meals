defmodule ExdailyMeals.User do
  use Ecto.Schema

  import Ecto.Changeset

  alias ExdailyMeals.Meal

  @primary_key {:id, :binary_id, autogenerate: true}

  @required_params [:cpf, :email, :name]

  @derive {Jason.Encoder, only: @required_params ++ [:id]}

  schema "users" do
    field :cpf, :string
    field :email, :string
    field :name, :string

    has_many :meals, Meal

    timestamps()
  end

  def changeset(struct \\ %__MODULE__{}, params) do
    struct
    |> cast(params, @required_params)
    |> validate_required(@required_params)
    |> validate_length(:cpf, is: 11)
    |> validate_format(:email, ~r/@/)
    |> unique_constraint([:email])
    |> unique_constraint([:cpf])
  end
end
