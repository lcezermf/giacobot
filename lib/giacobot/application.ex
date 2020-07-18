defmodule Giacobot.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      {
        Plug.Cowboy,
        scheme: :http,
        plug: Giacobot.Endpoint,
        options: [port: Application.get_env(:giacobot, :port)]
      }
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Giacobot.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
