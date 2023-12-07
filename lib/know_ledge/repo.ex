defmodule KnowLedge.Repo do
  use Ecto.Repo,
    otp_app: :know_ledge,
    adapter: Ecto.Adapters.Postgres
end
