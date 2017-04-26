defmodule Subvault.Web.PageController do
  use Subvault.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
