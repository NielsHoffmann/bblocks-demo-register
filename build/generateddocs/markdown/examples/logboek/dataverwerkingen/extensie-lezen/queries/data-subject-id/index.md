
# Logboek Extensie Lezen Data Subject ID Query (Parameter)

`geonovum.examples.logboek.dataverwerkingen.extensie-lezen.queries.data-subject-id` *v0.1.0*

Query parameter building block for retrieving log records related to a data subject.

[*Status*](http://www.opengis.net/def/status): Under development

## Examples

### Query parameter example
Query parameter example
#### json
```json

{
  "data_subject_id": "urn:example:person:123456789"
}

```

## Schema

```yaml
type: object
description: Query parameters for retrieving log records related to a data subject.
required:
- data_subject_id
properties:
  data_subject_id:
    type: string
    minLength: 1
    description: Identifier of the data subject for which log records are requested.
additionalProperties: false

```

Links to the schema:

* YAML version: [schema.yaml](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/queries/data-subject-id/schema.json)
* JSON version: [schema.json](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/queries/data-subject-id/schema.yaml)

## Sources

* [Logboek Extensie Lezen - query by dataSubjectId](https://logius-standaarden.github.io/logboek-extensie-lezen/)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/Geonovum-labs/bblocks-demo-register](https://github.com/Geonovum-labs/bblocks-demo-register)
* Path: `_sources/logboek/dataverwerkingen/extensie-lezen/queries/data-subject-id`

