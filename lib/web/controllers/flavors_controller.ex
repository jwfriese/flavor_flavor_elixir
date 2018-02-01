defmodule FlavorDotFlavor.Web.FlavorsController do
  use FlavorDotFlavor.Web, :controller
  alias FlavorDotFlavor.Repo
  alias FlavorDotFlavor.Flavor

  def index(conn, _params) do
    flavors = Repo.all(Flavor)
    render(conn, "index.json", flavors: flavors)
  end

  def create(conn, params) do
    changeset = Flavor.changeset(%Flavor{}, params)
    case Repo.insert(changeset) do
      {:ok, flavor} ->
        conn
        |> put_status(:created)
        |> render("flavor.json", %{:flavor => flavor})
    end
  end
end
