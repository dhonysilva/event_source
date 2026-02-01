Some words to keep in mind:

- commands
- events
- aggregates
- projectors

Emits the summary data

- notifiers
- injections

## Process Managers

Is responsible for managing stateful, long-running processes. Requires multiple events and commands to complete.

A process manager is the inverse of an aggregate: it consumes events and emits commands.

Process managers are choreographers who help event-sourced systems dance.


### Laws

- All events are immutable and exist in the past
- All data required for a Projection must be on the Events
- Work is a side effect
- All Projectors must stem from Events
- Never manage more than one flow per Process Manager
