defmodule MxEcto.Repo do
  use Ecto.Repo,
    otp_app: :mx_ecto,
    adapter: Ecto.Adapters.Postgres
end
