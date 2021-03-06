defmodule Rsvp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Starts a worker by calling: Rsvp.Worker.start_link(arg)
      # {Rsvp.Worker, arg}

      # Start the Ecto repository
      worker(Rsvp.Repo, [])
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Rsvp.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
