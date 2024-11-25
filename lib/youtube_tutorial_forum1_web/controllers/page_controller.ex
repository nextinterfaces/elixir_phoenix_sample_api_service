defmodule YoutubeTutorialForum1Web.PageController do
  use YoutubeTutorialForum1Web, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    IO.puts("users hit")
    users = [
      %{id: 1, name: "Alice", email: "some@email.com"},
      %{id: 2, name: "Bob", email: "bob@email.com"}
    ]
    render(conn, :users, users: users, layout: false)
  end

  def api_users(conn, _params) do
    IO.puts("api_users hit")
    users = [
      %{id: 1, name: "Alice", email: "some@email.com"},
      %{id: 2, name: "Bob", email: "bob@email.com"}
    ]
    json(conn, %{users: users})
  end

end
