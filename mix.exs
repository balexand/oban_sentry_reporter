defmodule ObanSentryReporter.MixProject do
  use Mix.Project

  def project do
    [
      app: :oban_sentry_reporter,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ObanSentryReporter.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:sentry, "~> 8.0"},
      {:telemetry, "~> 1.0"}
    ]
  end
end
