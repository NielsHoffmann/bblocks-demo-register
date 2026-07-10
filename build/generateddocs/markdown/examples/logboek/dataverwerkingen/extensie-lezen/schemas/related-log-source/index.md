
# Logboek Related Log Source (Schema)

`geonovum.examples.logboek.dataverwerkingen.extensie-lezen.schemas.related-log-source` *v0.1.0*

Schema for referring to another source or reading API that may contain related log records.

[*Status*](http://www.opengis.net/def/status): Under development

## Examples

### Logboek Related Log Source schema
Logboek Related Log Source example
#### json
```json
{
  "id": "https://api.omgevingsdienst.example/logboek",
  "type": "RelatedLogSource",
  "href": "https://api.omgevingsdienst.example/logboek?trace_id=4bf92f3577b34da6a3ce929d0e0e4736",
  "organisation": "agent:omgevingsdienst",
  "relation": "downstream-processing",
  "trace_id": "trace:4bf92f3577b34da6a3ce929d0e0e4736"
}
```

#### jsonld
```jsonld
{
  "@context": "https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/schemas/related-log-source/context.jsonld",
  "id": "https://api.omgevingsdienst.example/logboek",
  "type": "RelatedLogSource",
  "href": "https://api.omgevingsdienst.example/logboek?trace_id=4bf92f3577b34da6a3ce929d0e0e4736",
  "organisation": "agent:omgevingsdienst",
  "relation": "downstream-processing",
  "trace_id": "trace:4bf92f3577b34da6a3ce929d0e0e4736"
}
```

#### ttl
```ttl
@prefix agent: <http://trace.example.com/agent/> .
@prefix dct: <http://purl.org/dc/terms/> .
@prefix prov: <http://www.w3.org/ns/prov#> .
@prefix schema1: <http://schema.org/> .
@prefix trace: <http://trace.example.com/trace/> .

<https://api.omgevingsdienst.example/logboek> a prov:Entity ;
    dct:relation "downstream-processing" ;
    schema1:url <https://api.omgevingsdienst.example/logboek?trace_id=4bf92f3577b34da6a3ce929d0e0e4736> ;
    prov:wasAttributedTo agent:omgevingsdienst ;
    prov:wasGeneratedBy trace:4bf92f3577b34da6a3ce929d0e0e4736 .


```

## Schema

```yaml
type: object
description: Reference to another log source that may provide related records.
required:
- href
properties:
  href:
    type: string
    format: uri
    description: URL of the related log reading endpoint.
    x-jsonld-id: http://schema.org/url
    x-jsonld-type: '@id'
  organisation:
    type: string
    description: Organisation responsible for the related source.
    x-jsonld-id: http://www.w3.org/ns/prov#wasAttributedTo
    x-jsonld-type: '@id'
  relation:
    type: string
    description: Nature of the relation to the current log response.
    x-jsonld-id: http://purl.org/dc/terms/relation
  trace_id:
    type: string
    description: Trace identifier to use when querying the related source.
    x-jsonld-id: http://www.w3.org/ns/prov#wasGeneratedBy
    x-jsonld-type: '@id'
additionalProperties: true
x-jsonld-extra-terms:
  id: '@id'
  type: '@type'
  RelatedLogSource: http://www.w3.org/ns/prov#Entity
x-jsonld-prefixes:
  prov: http://www.w3.org/ns/prov#
  schema: http://schema.org/
  dct: http://purl.org/dc/terms/
  rdfs: http://www.w3.org/2000/01/rdf-schema#
  trace: http://trace.example.com/trace/
  agent: http://trace.example.com/agent/

```

Links to the schema:

* YAML version: [schema.yaml](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/schemas/related-log-source/schema.json)
* JSON version: [schema.json](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/schemas/related-log-source/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "id": "@id",
    "type": "@type",
    "RelatedLogSource": "prov:Entity",
    "href": {
      "@id": "schema:url",
      "@type": "@id"
    },
    "organisation": {
      "@id": "prov:wasAttributedTo",
      "@type": "@id"
    },
    "relation": "dct:relation",
    "trace_id": {
      "@id": "prov:wasGeneratedBy",
      "@type": "@id"
    },
    "prov": "http://www.w3.org/ns/prov#",
    "schema": "http://schema.org/",
    "dct": "http://purl.org/dc/terms/",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "trace": "http://trace.example.com/trace/",
    "agent": "http://trace.example.com/agent/",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/logboek/dataverwerkingen/extensie-lezen/schemas/related-log-source/context.jsonld)


# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/Geonovum-labs/bblocks-demo-register](https://github.com/Geonovum-labs/bblocks-demo-register)
* Path: `_sources/logboek/dataverwerkingen/extensie-lezen/schemas/related-log-source`

