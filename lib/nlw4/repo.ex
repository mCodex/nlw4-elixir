defmodule Nlw4.Repo do
  use Ecto.Repo,
    otp_app: :nlw4,
    adapter: Ecto.Adapters.Postgres
end
