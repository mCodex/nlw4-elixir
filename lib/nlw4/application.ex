defmodule Nlw4.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Nlw4.Repo,
      # Start the Telemetry supervisor
      Nlw4Web.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Nlw4.PubSub},
      # Start the Endpoint (http/https)
      Nlw4Web.Endpoint
      # Start a worker by calling: Nlw4.Worker.start_link(arg)
      # {Nlw4.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Nlw4.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    Nlw4Web.Endpoint.config_change(changed, removed)
    :ok
  end
end
