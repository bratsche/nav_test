defmodule NavTest.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      NavTestWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: NavTest.PubSub},
      # Start the Endpoint (http/https)
      NavTestWeb.Endpoint
      # Start a worker by calling: NavTest.Worker.start_link(arg)
      # {NavTest.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: NavTest.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    NavTestWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
