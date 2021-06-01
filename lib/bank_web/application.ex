defmodule BankWeb.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      BankWeb.Repo,
      # Start the Telemetry supervisor
      BankWebWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: BankWeb.PubSub},
      # Start the Endpoint (http/https)
      BankWebWeb.Endpoint
      # Start a worker by calling: BankWeb.Worker.start_link(arg)
      # {BankWeb.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: BankWeb.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    BankWebWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
