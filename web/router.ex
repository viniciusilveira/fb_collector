defmodule FbCollector.Router do
  use FbCollector.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", FbCollector do
    pipe_through :api
  end
end
