defmodule BankWebWeb.PageController do
  use BankWebWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
