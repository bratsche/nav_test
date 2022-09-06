defmodule NavTestWeb.PageController do
  use NavTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
