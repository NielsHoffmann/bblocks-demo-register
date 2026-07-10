
# Logboek Processing Activity (Schema)

`geonovum.examples.logboek.dataverwerkingen.extensie-lezen.schemas.processing-activity` *v0.1.0*

Schema for a processing activity referenced by log records.

[*Status*](http://www.opengis.net/def/status): Under development

## Examples

### Logboek Processing Activity schema
Logboek Processing Activity example
#### json
```json

{
  "id": "agent:urn-uuid-018f4c7c-6e67-7d34-b1b8-42e49c9d1a12",
  "type": "ProcessingActivity",
  "name": "Behandeling vergunningaanvraag",
  "comment": "de verwerkingsactiviteit",
  "controller": "agent:gemeente-amersfoort",
  "purpose": "Uitvoering wettelijke taak",
  "legal_basis": "Omgevingswet"
}

```

#### jsonld
```jsonld
{
  "@context": "https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/schemas/processing-activity/context.jsonld",
  "id": "agent:urn-uuid-018f4c7c-6e67-7d34-b1b8-42e49c9d1a12",
  "type": "ProcessingActivity",
  "name": "Behandeling vergunningaanvraag",
  "comment": "de verwerkingsactiviteit",
  "controller": "agent:gemeente-amersfoort",
  "purpose": "Uitvoering wettelijke taak",
  "legal_basis": "Omgevingswet"
}
```

#### ttl
```ttl
@prefix agent: <http://trace.example.com/agent/> .
@prefix dct: <http://purl.org/dc/terms/> .
@prefix prov: <http://www.w3.org/ns/prov#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .

agent:urn-uuid-018f4c7c-6e67-7d34-b1b8-42e49c9d1a12 a prov:Agent ;
    rdfs:label "Behandeling vergunningaanvraag" ;
    dct:rights "Omgevingswet" ;
    rdfs:comment "de verwerkingsactiviteit" ;
    prov:actedOnBehalfOf agent:gemeente-amersfoort ;
    prov:hadPurpose "Uitvoering wettelijke taak" .


```

## Schema

```yaml
type: object
description: Processing activity related to one or more log records.
required:
- id
properties:
  id:
    type: string
    description: Identifier of the processing activity.
    x-jsonld-id: '@id'
  name:
    type: string
    description: Human-readable name of the processing activity.
    x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#label
  controller:
    type: string
    description: Responsible organisation or controller.
    x-jsonld-id: http://www.w3.org/ns/prov#actedOnBehalfOf
    x-jsonld-type: '@id'
  purpose:
    type: string
    description: Purpose of the processing activity.
    x-jsonld-id: http://www.w3.org/ns/prov#hadPurpose
  legal_basis:
    type: string
    description: Legal basis for the processing activity.
    x-jsonld-id: http://purl.org/dc/terms/rights
additionalProperties: true
x-jsonld-extra-terms:
  type: '@type'
  ProcessingActivity: http://www.w3.org/ns/prov#Agent
  comment: http://www.w3.org/2000/01/rdf-schema#comment
x-jsonld-prefixes:
  prov: http://www.w3.org/ns/prov#
  rdfs: http://www.w3.org/2000/01/rdf-schema#
  dct: http://purl.org/dc/terms/
  schema: http://schema.org/
  agent: http://trace.example.com/agent/

```

Links to the schema:

* YAML version: [schema.yaml](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/schemas/processing-activity/schema.json)
* JSON version: [schema.json](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/schemas/processing-activity/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "type": "@type",
    "ProcessingActivity": "prov:Agent",
    "comment": "rdfs:comment",
    "id": "@id",
    "name": "rdfs:label",
    "controller": {
      "@id": "prov:actedOnBehalfOf",
      "@type": "@id"
    },
    "purpose": "prov:hadPurpose",
    "legal_basis": "dct:rights",
    "prov": "http://www.w3.org/ns/prov#",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "dct": "http://purl.org/dc/terms/",
    "schema": "http://schema.org/",
    "agent": "http://trace.example.com/agent/",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/schemas/processing-activity/context.jsonld)


# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/Geonovum-labs/bblocks-demo-register](https://github.com/Geonovum-labs/bblocks-demo-register)
* Path: `_sources/logboek/dataverwerkingen/extensie-lezen/schemas/processing-activity`

