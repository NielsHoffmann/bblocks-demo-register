
# Logboek Dataverwerkingen Extensie Lezen API (Api)

`geonovum.examples.logboek.dataverwerkingen.extensie-lezen.api` *v0.1.0*

Umbrella building block for the API used to read logged data processing records from a Logboek Dataverwerkingen implementation.

[*Status*](http://www.opengis.net/def/status): Under development

## Examples

### Logboek Dataverwerkingen Extensie Lezen API Spec
open api spec
#### json
```json
{
  "openapi": "3.0.3",
  "info": {
    "title": "Logboek Dataverwerkingen Extensie Lezen API",
    "version": "0.1.0"
  },
  "paths": {
    "/logs": {
      "get": {
        "summary": "Read logged data processing records",
        "parameters": [
          {
            "$ref": "../../queries/trace-id/schema.yaml"
          },
          {
            "$ref": "../../queries/processing-activity-id/schema.yaml"
          },
          {
            "$ref": "../../queries/data-subject-id/schema.yaml"
          },
          {
            "$ref": "../../queries/time-range/schema.yaml"
          }
        ]
      }
    }
  }
}
```


### Logboek Dataverwerkingen Extensie Lezen API Call
open api call voorbeeld
#### json
```json
{
  "records": [
    {
      "id": "urn:uuid:11111111-2222-3333-4444-555555555555",
      "trace_id": "4bf92f3577b34da6a3ce929d0e0e4736",
      "processing_activity_id": "urn:uuid:018f4c7c-6e67-7d34-b1b8-42e49c9d1a12",
      "data_subject_id": "urn:example:person:123456789",
      "recorded_at": "2026-05-26T12:15:00Z",
      "actor": "urn:example:organisation:gemeente-amersfoort",
      "purpose": "Vergunningverlening",
      "action": "read",
      "source": "https://api.example.org/logboek"
    },
    {
      "id": "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
      "trace_id": "4bf92f3577b34da6a3ce929d0e0e4736",
      "processing_activity_id": "urn:uuid:018f4c7c-6e67-7d34-b1b8-42e49c9d1a12",
      "recorded_at": "2026-05-26T12:16:05Z",
      "actor": "urn:example:organisation:omgevingsdienst",
      "purpose": "Vergunningverlening",
      "action": "share",
      "source": "https://api.omgevingsdienst.example/logboek"
    }
  ],
  "processing_activities": [
    {
      "id": "urn:uuid:018f4c7c-6e67-7d34-b1b8-42e49c9d1a12",
      "name": "Behandeling vergunningaanvraag",
      "controller": "Gemeente Amersfoort",
      "purpose": "Uitvoering wettelijke taak",
      "legal_basis": "Omgevingswet"
    }
  ],
  "related_sources": [
    {
      "href": "https://api.omgevingsdienst.example/logboek?trace_id=4bf92f3577b34da6a3ce929d0e0e4736",
      "organisation": "Omgevingsdienst",
      "relation": "downstream-processing",
      "trace_id": "4bf92f3577b34da6a3ce929d0e0e4736"
    }
  ],
  "links": [
    {
      "rel": "self",
      "href": "https://api.example.org/logboek?trace_id=4bf92f3577b34da6a3ce929d0e0e4736",
      "type": "application/json"
    }
  ]
}
```

## Sources

* [Logboek Dataverwerkingen Extensie Lezen specification](https://logius-standaarden.github.io/logboek-extensie-lezen/)
* [OpenAPI source](https://github.com/Logius-standaarden/logboek-extensie-lezen/blob/develop/media/openapi.json)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/Geonovum-labs/bblocks-demo-register](https://github.com/Geonovum-labs/bblocks-demo-register)
* Path: `_sources/logboek/dataverwerkingen/extensie-lezen/api`

