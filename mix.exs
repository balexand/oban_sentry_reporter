defmodule ObanSentryReporter.MixProject do
  use Mix.Project

  @version "1.0.1"

  def project do
    [
      app: :oban_sentry_reporter,
      description: "Reports Oban job failures to Sentry.",
      version: @version,
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: [
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/balexand/oban_sentry_reporter"}
      ],
      docs: [
        extras: ["README.md"],
        source_ref: "v#{@version}",
        source_url: "https://github.com/balexand/oban_sentry_reporter"
      ]
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
      {:sentry, "~> 9.0 or ~> 8.0"},
      {:telemetry, "~> 1.0"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end
