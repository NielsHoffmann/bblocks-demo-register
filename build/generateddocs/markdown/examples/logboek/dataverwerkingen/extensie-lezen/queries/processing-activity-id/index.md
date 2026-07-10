
# Logboek Extensie Lezen Processing Activity ID Query (Parameter)

`geonovum.examples.logboek.dataverwerkingen.extensie-lezen.queries.processing-activity-id` *v0.1.0*

Query parameter building block for retrieving log records related to a processing activity.

[*Status*](http://www.opengis.net/def/status): Under development

## Examples

### Query parameter Processing Activity ID Query
Query parameter Processing Activity ID Query example
#### json
```json

{
  "processing_activity_id": "urn:uuid:018f4c7c-6e67-7d34-b1b8-42e49c9d1a12"
}

```

## Schema

```yaml
type: object
description: Query parameters for retrieving log records related to a processing activity.
required:
- processing_activity_id
properties:
  processing_activity_id:
    type: string
    minLength: 1
    description: Identifier of the processing activity for which log records are requested.
additionalProperties: false

```

Links to the schema:

* YAML version: [schema.yaml](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/queries/processing-activity-id/schema.json)
* JSON version: [schema.json](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/queries/processing-activity-id/schema.yaml)

## Sources

* [Logboek Extensie Lezen - query by processingActivityID](https://logius-standaarden.github.io/logboek-extensie-lezen/)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/Geonovum-labs/bblocks-demo-register](https://github.com/Geonovum-labs/bblocks-demo-register)
* Path: `_sources/logboek/dataverwerkingen/extensie-lezen/queries/processing-activity-id`

