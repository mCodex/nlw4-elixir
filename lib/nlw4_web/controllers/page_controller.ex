defmodule Nlw4Web.PageController do
  use Nlw4Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
