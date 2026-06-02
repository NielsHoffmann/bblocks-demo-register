
# Localoutlier process input schema (Schema)

`tikouka.examples.ogcapi.processes.schemas.localoutlier.inputSchema` *v1.0*

Input schema for the localoutlier process

[*Status*](http://www.opengis.net/def/status): Under development

## Schema

```yaml
type: object
required:
- dataset
properties:
  dataset:
    type: string
    format: url
  n_neighbors:
    oneOf:
    - type: integer
    default: 20
    x-jsonld-id: https://purl.stelselcatalogus.nl/id/mkg/BRTkenmerk_nummer-inrichtingselement
  leaf_size:
    oneOf:
    - type: integer
    default: 30
    x-jsonld-id: http://definities.geostandaarden.nl/nen3610-2022/id/begrip/verkeerruimte
  output_column:
    oneOf:
    - type: string
    default: abnormality

```

Links to the schema:

* YAML version: [schema.yaml](https://nielshoffmann.github.io/bblocks-demo-register/build/annotated/examples/ogcapi/processes/schemas/localoutlier/inputSchema/schema.json)
* JSON version: [schema.json](https://nielshoffmann.github.io/bblocks-demo-register/build/annotated/examples/ogcapi/processes/schemas/localoutlier/inputSchema/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "n_neighbors": "https://purl.stelselcatalogus.nl/id/mkg/BRTkenmerk_nummer-inrichtingselement",
    "leaf_size": "http://definities.geostandaarden.nl/nen3610-2022/id/begrip/verkeerruimte",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://nielshoffmann.github.io/bblocks-demo-register/build/annotated/examples/ogcapi/processes/schemas/localoutlier/inputSchema/context.jsonld)


# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/NielsHoffmann/bblocks-demo-register](https://github.com/NielsHoffmann/bblocks-demo-register)
* Path: `_sources/ogcapi/processes/schemas/localoutlier/inputSchema`

