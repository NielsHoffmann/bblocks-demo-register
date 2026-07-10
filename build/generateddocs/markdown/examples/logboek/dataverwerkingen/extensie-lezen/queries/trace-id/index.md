
# Logboek Extensie Lezen Trace ID Query (Parameter)

`geonovum.examples.logboek.dataverwerkingen.extensie-lezen.queries.trace-id` *v0.1.0*

Query parameter building block for retrieving log records by trace identifier.

[*Status*](http://www.opengis.net/def/status): Under development

## Examples

### Query parameter Trace ID Query
Query parameter Trace ID Query example
#### json
```json

{
  "trace_id": "4bf92f3577b34da6a3ce929d0e0e4736"
}

```

## Schema

```yaml
type: object
description: Query parameters for retrieving log records related to a trace.
required:
- trace_id
properties:
  trace_id:
    type: string
    minLength: 1
    description: Identifier used to retrieve log records related to one trace.
additionalProperties: false

```

Links to the schema:

* YAML version: [schema.yaml](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/queries/trace-id/schema.json)
* JSON version: [schema.json](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/queries/trace-id/schema.yaml)

## Sources

* [Logboek Extensie Lezen - query by traceID](https://logius-standaarden.github.io/logboek-extensie-lezen/)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/Geonovum-labs/bblocks-demo-register](https://github.com/Geonovum-labs/bblocks-demo-register)
* Path: `_sources/logboek/dataverwerkingen/extensie-lezen/queries/trace-id`

