defmodule FlavorDotFlavor.Web.FlavorsView do
  use FlavorDotFlavor.Web, :view

  def render("index.json", %{flavors: flavors}) do
    render_many(flavors, FlavorDotFlavor.Web.FlavorsView, "flavor.json", as: :flavor)
  end

  def render("flavor.json", %{flavor: flavor}) do
    %{name: flavor.name}
  end
end