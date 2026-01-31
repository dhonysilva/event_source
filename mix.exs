defmodule EventSource.MixProject do
  use Mix.Project

  def project do
    [
      app: :event_source,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {FlightTracker.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:gen_stage, "~> 1.3.2"},
      {:cloudevents, "~> 0.6.1"},
      {:avrora, "~> 0.21"},
      {:uuid, "~> 1.1.8"}
    ]
  end
end
