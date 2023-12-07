defmodule KnowLedge.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      KnowLedgeWeb.Telemetry,
      # Start the Ecto repository
      KnowLedge.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: KnowLedge.PubSub},
      # Start Finch
      {Finch, name: KnowLedge.Finch},
      # Start the Endpoint (http/https)
      KnowLedgeWeb.Endpoint
      # Start a worker by calling: KnowLedge.Worker.start_link(arg)
      # {KnowLedge.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: KnowLedge.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    KnowLedgeWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
