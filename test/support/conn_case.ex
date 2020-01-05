defmodule CatcastsWeb.ConnCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      # Import conveniences for testing with connections
      use Phoenix.ConnTest
      import Catcasts.TestHelpers
      alias CatcastsWeb.Router.Helpers, as: Routes

      # The default endpoint for testing
      @endpoint CatcastsWeb.Endpoint
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Catcasts.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(Catcasts.Repo, {:shared, self()})
    end

    {:ok, conn: Phoenix.ConnTest.build_conn()}
  end
end
