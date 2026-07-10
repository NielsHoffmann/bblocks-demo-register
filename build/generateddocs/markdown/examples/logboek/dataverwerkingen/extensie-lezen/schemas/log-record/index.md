
# Logboek Log Record (Schema)

`geonovum.examples.logboek.dataverwerkingen.extensie-lezen.schemas.log-record` *v0.1.0*

Core schema for a single logged data processing record returned by the Logboek Extensie Lezen API.

[*Status*](http://www.opengis.net/def/status): Under development

## Examples

### Logboek Log Record schema
Logboek Log Record schema example
#### json
```json
{
  "id": "urn:uuid:11111111-2222-3333-4444-555555555555",
  "type": "LogRecord",
  "trace_id": "4bf92f3577b34da6a3ce929d0e0e4736",
  "processing_activity_id": "urn:uuid:018f4c7c-6e67-7d34-b1b8-42e49c9d1a12",
  "data_subject_id": "urn:example:person:123456789",
  "recorded_at": "2026-05-26T12:15:00Z",
  "actor": "urn:example:organisation:service-a",
  "purpose": "besluitvorming",
  "action": "read",
  "source": "https://example.org/logboek"
}

```

#### jsonld
```jsonld
{
  "@context": "https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/schemas/log-record/context.jsonld",
  "id": "urn:uuid:11111111-2222-3333-4444-555555555555",
  "type": "LogRecord",
  "trace_id": "4bf92f3577b34da6a3ce929d0e0e4736",
  "processing_activity_id": "urn:uuid:018f4c7c-6e67-7d34-b1b8-42e49c9d1a12",
  "data_subject_id": "urn:example:person:123456789",
  "recorded_at": "2026-05-26T12:15:00Z",
  "actor": "urn:example:organisation:service-a",
  "purpose": "besluitvorming",
  "action": "read",
  "source": "https://example.org/logboek"
}
```

#### ttl
```ttl
@prefix dct: <http://purl.org/dc/terms/> .
@prefix prov: <http://www.w3.org/ns/prov#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

<urn:uuid:11111111-2222-3333-4444-555555555555> a prov:Activity ;
    rdfs:label "read" ;
    dct:source <https://example.org/logboek> ;
    prov:hadPurpose "besluitvorming" ;
    prov:qualifiedAssociation <urn:example:person:123456789>,
        <urn:uuid:018f4c7c-6e67-7d34-b1b8-42e49c9d1a12> ;
    prov:startedAtTime "2026-05-26T12:15:00+00:00"^^xsd:dateTime ;
    prov:wasAssociatedWith <urn:example:organisation:service-a> ;
    prov:wasGeneratedBy <file:///github/workspace/4bf92f3577b34da6a3ce929d0e0e4736> .


```

## Schema

```yaml
type: object
description: A single logged data processing record.
required:
- id
- recorded_at
properties:
  id:
    type: string
    description: Unique identifier of the log record.
    x-jsonld-id: '@id'
  trace_id:
    type: string
    description: Identifier linking records that belong to the same trace.
    x-jsonld-id: http://www.w3.org/ns/prov#wasGeneratedBy
    x-jsonld-type: '@id'
  processing_activity_id:
    type: string
    description: Identifier of the related processing activity.
    x-jsonld-id: http://www.w3.org/ns/prov#qualifiedAssociation
    x-jsonld-type: '@id'
  data_subject_id:
    type: string
    description: Identifier of the data subject, if applicable and permitted.
    x-jsonld-id: http://www.w3.org/ns/prov#qualifiedAssociation
    x-jsonld-type: '@id'
  recorded_at:
    type: string
    format: date-time
    description: Timestamp at which the log record was recorded.
    x-jsonld-id: http://www.w3.org/ns/prov#startedAtTime
    x-jsonld-type: http://www.w3.org/2001/XMLSchema#dateTime
  actor:
    type: string
    description: Actor responsible for or involved in the processing event.
    x-jsonld-id: http://www.w3.org/ns/prov#wasAssociatedWith
    x-jsonld-type: '@id'
  purpose:
    type: string
    description: Purpose of the processing event.
    x-jsonld-id: http://www.w3.org/ns/prov#hadPurpose
  action:
    type: string
    description: Action or operation that was logged.
    x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#label
  source:
    type: string
    format: uri
    description: URI of the source system or logbook.
    x-jsonld-id: http://purl.org/dc/terms/source
    x-jsonld-type: '@id'
additionalProperties: true
x-jsonld-extra-terms:
  type: '@type'
  LogRecord: http://www.w3.org/ns/prov#Activity
  start_time:
    x-jsonld-id: http://www.w3.org/ns/prov#startedAtTime
    x-jsonld-type: http://www.w3.org/2001/XMLSchema#dateTime
  end_time:
    x-jsonld-id: http://www.w3.org/ns/prov#endedAtTime
    x-jsonld-type: http://www.w3.org/2001/XMLSchema#dateTime
  name: http://www.w3.org/2000/01/rdf-schema#label
  data_object_id:
    x-jsonld-id: http://www.w3.org/ns/prov#qualifiedUsage
    x-jsonld-type: '@id'
  data_object_def:
    x-jsonld-id: http://purl.org/dc/terms/source
    x-jsonld-type: '@id'
x-jsonld-prefixes:
  prov: http://www.w3.org/ns/prov#
  rdfs: http://www.w3.org/2000/01/rdf-schema#
  dct: http://purl.org/dc/terms/
  schema: http://schema.org/
  trace: http://trace.example.com/trace/
  span: http://trace.example.com/span/
  entity: http://trace.example.com/entity/
  usage: http://trace.example.com/usage/
  association: http://trace.example.com/association/
  agent: http://trace.example.com/agent/
  subject: http://trace.example.com/subject/

```

Links to the schema:

* YAML version: [schema.yaml](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/schemas/log-record/schema.json)
* JSON version: [schema.json](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/schemas/log-record/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "type": "@type",
    "LogRecord": "prov:Activity",
    "start_time": {
      "@id": "prov:startedAtTime",
      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
    },
    "end_time": {
      "@id": "prov:endedAtTime",
      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
    },
    "name": "rdfs:label",
    "data_object_id": {
      "@id": "prov:qualifiedUsage",
      "@type": "@id"
    },
    "data_object_def": {
      "@id": "dct:source",
      "@type": "@id"
    },
    "id": "@id",
    "trace_id": {
      "@id": "prov:wasGeneratedBy",
      "@type": "@id"
    },
    "processing_activity_id": {
      "@id": "prov:qualifiedAssociation",
      "@type": "@id"
    },
    "data_subject_id": {
      "@id": "prov:qualifiedAssociation",
      "@type": "@id"
    },
    "recorded_at": {
      "@id": "prov:startedAtTime",
      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
    },
    "actor": {
      "@id": "prov:wasAssociatedWith",
      "@type": "@id"
    },
    "purpose": "prov:hadPurpose",
    "action": "rdfs:label",
    "source": {
      "@id": "dct:source",
      "@type": "@id"
    },
    "prov": "http://www.w3.org/ns/prov#",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "dct": "http://purl.org/dc/terms/",
    "schema": "http://schema.org/",
    "trace": "http://trace.example.com/trace/",
    "span": "http://trace.example.com/span/",
    "entity": "http://trace.example.com/entity/",
    "usage": "http://trace.example.com/usage/",
    "association": "http://trace.example.com/association/",
    "agent": "http://trace.example.com/agent/",
    "subject": "http://trace.example.com/subject/",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/schemas/log-record/context.jsonld)


# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/Geonovum-labs/bblocks-demo-register](https://github.com/Geonovum-labs/bblocks-demo-register)
* Path: `_sources/logboek/dataverwerkingen/extensie-lezen/schemas/log-record`

