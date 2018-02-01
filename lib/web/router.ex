defmodule FlavorDotFlavor.Web.Router do
  use FlavorDotFlavor.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", FlavorDotFlavor.Web do
    pipe_through :api # Use the default browser stack

    get "/flavors", FlavorsController, :index
    post "/flavors", FlavorsController, :create
  end

  # Other scopes may use custom stacks.
  # scope "/api", FlavorDotFlavor.Web do
  #   pipe_through :api
  # end
end
