defmodule CatcastsWeb.NavigationTest do
  use CatcastsWeb.ConnCase, async: true

  test "shows a sign in with Google Link when not signed in", %{conn: conn} do
    conn = get(conn, "/")

    assert html_response(conn, 200) =~ "Sign in with Google"
  end
end
