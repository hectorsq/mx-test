defmodule BrWeb.PageController do
  use BrWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
