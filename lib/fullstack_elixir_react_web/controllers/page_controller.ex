defmodule FullstackElixirReactWeb.PageController do
  use FullstackElixirReactWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
