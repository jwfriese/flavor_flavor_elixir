defmodule FlavorDotFlavor.Flavor do
  use Ecto.Schema
  import Ecto.Changeset

  schema "flavors" do
    field :name, :string
  end

  def changeset(struct, params \\ %{}) do
    IO.inspect params
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
  end
end