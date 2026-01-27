Words to pay attention:

- `projector` - takes data from events in the event log into a read model
- `projection` - the read model, which can be then be queried by consumers
- aggregates

Projectors handle events and produce views of data designed specifically with consumers in mind.

Read and Write models.


### Laws

- All data required for a Projection must be on the Events

Projectors as `GenServers`
