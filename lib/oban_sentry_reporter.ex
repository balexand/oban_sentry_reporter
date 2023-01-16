defmodule ObanSentryReporter do
  @moduledoc """
  Reports Oban job failures to Sentry.
  """

  require Logger

  def handle_event([:oban, :job, :exception], measure, meta, _) do
    extra =
      meta.job
      |> Map.take([:id, :args, :meta, :queue, :worker])
      |> Map.merge(measure)

    Logger.error(inspect([meta.reason, meta.stacktrace, extra]))

    Sentry.capture_exception(meta.reason, stacktrace: meta.stacktrace, extra: extra)
  end
end
