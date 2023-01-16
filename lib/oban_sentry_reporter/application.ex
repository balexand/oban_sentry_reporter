defmodule ObanSentryReporter.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    :telemetry.attach(
      "oban-sentry-reporter",
      [:oban, :job, :exception],
      &ObanSentryReporter.handle_event/4,
      []
    )

    children = []

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ObanSentryReporter.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
