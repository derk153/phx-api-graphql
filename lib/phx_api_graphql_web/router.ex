defmodule PhxApiGraphqlWeb.Router do
  use PhxApiGraphqlWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhxApiGraphqlWeb do
    pipe_through :api
  end
end
