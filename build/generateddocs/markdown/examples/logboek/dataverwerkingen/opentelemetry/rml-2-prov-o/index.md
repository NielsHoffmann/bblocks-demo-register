
# LDV RML Mapper (Schema)

`geonovum.examples.logboek.dataverwerkingen.opentelemetry.rml-2-prov-o` *v0.1*

OpenTelemetry OTLP JSON transformed to PROV-O RDF using an RML transform plugin.

[*Status*](http://www.opengis.net/def/status): Under development

## Examples

### OTLP to PROV-O RML transform input
An OTLP trace transformed into PROV-O RDF using the RML plugin.
#### json
```json
{
    "resourceSpans": [
        {
            "resource": {
                "attributes": [
                    {
                        "key": "service.name",
                        "value": {
                            "stringValue": "http://aanvraag"
                        }
                    }
                ]
            },
            "scopeSpans": [
                {
                    "scope": {
                        "name": "aanvraag.tracer"
                    },
                    "spans": [
                        {
                            "traceId": "98bdcae79e7fa7d4ccbc981e0653e8fd",
                            "spanId": "dff0fb279813ee0d",
                            "parentSpanId": "",
                            "flags": 256,
                            "name": "Aanvraag_span",
                            "kind": 1,
                            "startTimeUnixNano": "1739370701786437325",
                            "endTimeUnixNano": "1739370702000265566",
                            "attributes": [
                                {
                                    "key": "dpl.objects.processing_association_id",
                                    "value": {
                                        "stringValue": "http://aanvraag"
                                    }
                                },
                                {
                                    "key": "dpl.core.processing_activity_id",
                                    "value": {
                                        "stringValue": "RVA_Aanvraag_Kapvergunning"
                                    }
                                },
                                {
                                    "key": "dpl.objects.data_object_id",
                                    "value": {
                                        "intValue": "2069296"
                                    }
                                },
                                {
                                    "key": "dpl.objects.data_object_def",
                                    "value": {
                                        "stringValue": "http://brt.basisregistraties.overheid.nl/id/concept/Boom"
                                    }
                                },
                                {
                                    "key": "dpl.core.data_subject_id",
                                    "value": {
                                        "stringValue": "Meneer_van_Eik"
                                    }
                                }
                            ],
                            "status": {
                                "code": 1
                            }
                        }
                    ]
                }
            ]
        }
    ]
}
```


# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/Geonovum-labs/bblocks-demo-register](https://github.com/Geonovum-labs/bblocks-demo-register)
* Path: `_sources/logboek/dataverwerkingen/opentelemetry/rml-2-prov-o`

