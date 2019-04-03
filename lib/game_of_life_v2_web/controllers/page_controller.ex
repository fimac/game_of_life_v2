defmodule GameOfLifeV2Web.PageController do
  use GameOfLifeV2Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
