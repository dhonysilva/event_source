defmodule FlightTracker.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Cloudevents,
      {FlightTracker.FileInjector, ["./sample_cloudevents.json"]},
      {FlightTracker.MessageBroadcaster, []},
      {FlightTracker.CraftProjector, []},
      {FlightTracker.FlightNotifier, "AMC421"}
    ]

    opts = [strategy: :one_for_one, name: FlightTracker.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
