# ObanSentryReporter

[![Package](https://img.shields.io/hexpm/v/oban_sentry_reporter.svg)](https://hex.pm/packages/oban_sentry_reporter) [![Documentation](http://img.shields.io/badge/hex.pm-docs-green.svg?style=flat)](https://hexdocs.pm/oban_sentry_reporter) ![CI](https://github.com/balexand/oban_sentry_reporter/actions/workflows/elixir.yml/badge.svg)


Reports Oban job failures to Sentry.

## Installation

The package can be installed by adding `oban_sentry_reporter` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:oban_sentry_reporter, "~> 1.0"}
  ]
end
```

That's it! As long as you've configured [sentry](https://github.com/getsentry/sentry-elixir) then errors will be reported.
