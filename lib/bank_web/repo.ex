defmodule BankWeb.Repo do
  use Ecto.Repo,
    otp_app: :bank_web,
    adapter: Ecto.Adapters.Postgres
end
