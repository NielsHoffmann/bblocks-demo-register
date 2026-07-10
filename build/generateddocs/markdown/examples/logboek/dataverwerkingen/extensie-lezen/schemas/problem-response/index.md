
# Logboek Problem Response (Schema)

`geonovum.examples.logboek.dataverwerkingen.extensie-lezen.schemas.problem-response` *v0.1.0*

Problem response schema for errors returned by the Logboek Extensie Lezen API.

[*Status*](http://www.opengis.net/def/status): Under development

## Schema

```yaml
type: object
description: Error response.
required:
- title
- status
properties:
  type:
    type: string
    format: uri
  title:
    type: string
  status:
    type: integer
    minimum: 100
    maximum: 599
  detail:
    type: string
  instance:
    type: string
    format: uri
additionalProperties: true

```

Links to the schema:

* YAML version: [schema.yaml](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/schemas/problem-response/schema.json)
* JSON version: [schema.json](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/schemas/problem-response/schema.yaml)


# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/Geonovum-labs/bblocks-demo-register](https://github.com/Geonovum-labs/bblocks-demo-register)
* Path: `_sources/logboek/dataverwerkingen/extensie-lezen/schemas/problem-response`

