defmodule FlavorDotFlavor.Web.FlavorsView do
  use FlavorDotFlavor.Web, :view

  def render("index.json", %{flavors: flavors}) do
    render_many(flavors, FlavorDotFlavor.Web.FlavorsView, "flavor.json", as: :flavor)
  end

  def render("flavor.json", %{flavor: flavor}) do
    %{name: flavor.name}
  end

  def render("error.json", %{field_name: field_name, error: "can't be blank"}) do
    %{error: "Missing required field '#{field_name}'"}
  end
end