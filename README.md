# ObanSentryReporter

Reports Oban job failures to Sentry.

## Installation

The package can be installed by adding `oban_sentry_reporter` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:oban_sentry_reporter, "~> 0.1"}
  ]
end
```

That's it! As long as you've configured [sentry](https://github.com/getsentry/sentry-elixir) then errors will be reported.
