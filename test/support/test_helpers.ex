defmodule Catcasts.TestHelpers do
  alias Catcasts.{Repo, User}

  def user_fixture(attrs \\ %{}) do
    params =
      Enum.into(attrs, %{
        first_name: "Big",
        last_name: "Wax",
        email: "bigwax#{System.unique_integer([:positive])}@example.com",
        token: "2u9df7979hfd",
        provider: "google"
      })

    {:ok, user} =
      User.changeset(%User{}, params)
      |> Repo.insert()

    user
  end
end
