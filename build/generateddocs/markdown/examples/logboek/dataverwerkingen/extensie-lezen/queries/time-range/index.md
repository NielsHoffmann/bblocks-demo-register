
# Logboek Extensie Lezen Time Range Query (Parameter)

`geonovum.examples.logboek.dataverwerkingen.extensie-lezen.queries.time-range` *v0.1.0*

Query parameter building block for retrieving log records within a start and end time interval.

[*Status*](http://www.opengis.net/def/status): Under development

## Examples

### Query parameter Time Range Query
Query parameter Time Range Query example
#### json
```json
{
  "start_time": "2026-05-26T00:00:00Z",
  "end_time": "2026-05-26T23:59:59Z"
}

```

## Schema

```yaml
type: object
description: Query parameters for retrieving log records within a time interval.
properties:
  start_time:
    type: string
    format: date-time
    description: Start of the time interval.
  end_time:
    type: string
    format: date-time
    description: End of the time interval.
additionalProperties: false
anyOf:
- required:
  - start_time
- required:
  - end_time

```

Links to the schema:

* YAML version: [schema.yaml](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/queries/time-range/schema.json)
* JSON version: [schema.json](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/queries/time-range/schema.yaml)

## Sources

* [Logboek Extensie Lezen - query by start_time and end_time](https://logius-standaarden.github.io/logboek-extensie-lezen/)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/Geonovum-labs/bblocks-demo-register](https://github.com/Geonovum-labs/bblocks-demo-register)
* Path: `_sources/logboek/dataverwerkingen/extensie-lezen/queries/time-range`

