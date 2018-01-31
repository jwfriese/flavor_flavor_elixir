defmodule FlavorDotFlavor.Web.FlavorsController do
  use FlavorDotFlavor.Web, :controller
  alias FlavorDotFlavor.Repo
  alias FlavorDotFlavor.Flavor

  def index(conn, _params) do
    flavors = Repo.all(Flavor)
    render(conn, "index.json", flavors: flavors)
  end
end
