
# Logboek Log Record Collection (Schema)

`geonovum.examples.logboek.dataverwerkingen.extensie-lezen.schemas.log-record-collection` *v0.1.0*

Response schema for a collection of log records returned by the Logboek Extensie Lezen API.

[*Status*](http://www.opengis.net/def/status): Under development

## Examples

### Logboek Log Record Collection schema
Logboek Log Record Collection example
#### json
```json
{
  "type": "LogRecordCollection",
  "records": [
    {
      "id": "urn:uuid:11111111-2222-3333-4444-555555555555",
      "type": "LogRecord",
      "trace_id": "4bf92f3577b34da6a3ce929d0e0e4736",
      "recorded_at": "2026-05-26T12:15:00Z",
      "action": "read"
    }
  ],
  "processing_activities": [],
  "related_sources": [],
  "links": [
    {
      "href": "https://example.org/logs?trace_id=4bf92f3577b34da6a3ce929d0e0e4736",
      "rel": "self",
      "type": "application/json"
    }
  ]
}
```

#### jsonld
```jsonld
{
  "@context": "https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/schemas/log-record-collection/context.jsonld",
  "type": "LogRecordCollection",
  "records": [
    {
      "id": "urn:uuid:11111111-2222-3333-4444-555555555555",
      "type": "LogRecord",
      "trace_id": "4bf92f3577b34da6a3ce929d0e0e4736",
      "recorded_at": "2026-05-26T12:15:00Z",
      "action": "read"
    }
  ],
  "processing_activities": [],
  "related_sources": [],
  "links": [
    {
      "href": "https://example.org/logs?trace_id=4bf92f3577b34da6a3ce929d0e0e4736",
      "rel": "self",
      "type": "application/json"
    }
  ]
}
```

#### ttl
```ttl
@prefix dct: <http://purl.org/dc/terms/> .
@prefix prov: <http://www.w3.org/ns/prov#> .
@prefix schema1: <http://schema.org/> .

[] a prov:Bundle ;
    schema1:subjectOf [ a <file:///github/workspace/application/json> ;
            dct:relation "self" ;
            schema1:url <https://example.org/logs?trace_id=4bf92f3577b34da6a3ce929d0e0e4736> ] ;
    prov:hadMember [ a <file:///github/workspace/LogRecord> ] .


```

## Schema

```yaml
name: Logboek Log Record Collection
abstract: Response schema for a collection of log records returned by the Logboek
  Extensie Lezen API.
status: under-development
dateTimeAddition: '2026-07-09T00:00:00Z'
itemClass: schema
register: Logboek Dataverwerkingen
version: 0.1.0
dependsOn:
- nl.geonovum.logboek.extensie-lezen.schemas.log-record
x-jsonld-extra-terms:
  records:
    x-jsonld-id: http://www.w3.org/ns/prov#hadMember
    x-jsonld-container: '@set'
  processing_activities:
    x-jsonld-id: http://www.w3.org/ns/prov#wasAssociatedWith
    x-jsonld-container: '@set'
  related_sources:
    x-jsonld-id: http://purl.org/dc/terms/relation
    x-jsonld-container: '@set'
  links:
    x-jsonld-id: http://schema.org/subjectOf
    x-jsonld-container: '@set'
  href:
    x-jsonld-id: http://schema.org/url
    x-jsonld-type: '@id'
  rel: http://purl.org/dc/terms/relation
  type: '@type'
  LogRecordCollection: http://www.w3.org/ns/prov#Bundle
x-jsonld-prefixes:
  prov: http://www.w3.org/ns/prov#
  dct: http://purl.org/dc/terms/
  schema: http://schema.org/
  rdfs: http://www.w3.org/2000/01/rdf-schema#

```

Links to the schema:

* YAML version: [schema.yaml](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/schemas/log-record-collection/schema.json)
* JSON version: [schema.json](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/schemas/log-record-collection/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "records": {
      "@id": "prov:hadMember",
      "@container": "@set"
    },
    "processing_activities": {
      "@id": "prov:wasAssociatedWith",
      "@container": "@set"
    },
    "related_sources": {
      "@id": "dct:relation",
      "@container": "@set"
    },
    "links": {
      "@id": "schema:subjectOf",
      "@container": "@set"
    },
    "href": {
      "@id": "schema:url",
      "@type": "@id"
    },
    "rel": "dct:relation",
    "type": "@type",
    "LogRecordCollection": "prov:Bundle",
    "prov": "http://www.w3.org/ns/prov#",
    "dct": "http://purl.org/dc/terms/",
    "schema": "http://schema.org/",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/schemas/log-record-collection/context.jsonld)


# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/Geonovum-labs/bblocks-demo-register](https://github.com/Geonovum-labs/bblocks-demo-register)
* Path: `_sources/logboek/dataverwerkingen/extensie-lezen/schemas/log-record-collection`

