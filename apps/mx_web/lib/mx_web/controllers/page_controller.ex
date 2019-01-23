defmodule MxWeb.PageController do
  use MxWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
