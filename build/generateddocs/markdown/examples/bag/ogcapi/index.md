
# BAG-Pand (Schema)

`geonovum.examples.bag.ogcapi` *v0.1*

A GeoJSON Feature beschrijving van een BAG Pand.

[*Status*](http://www.opengis.net/def/status): Under development

## Description

# Bag Pand Feature definitie

(Let op: alleen als demo bedoelt!)

- Dit building block dient als voorbeeld hoe schema's gecombineerd kunnen worden.

De basis definitie van een BAG Pand wordt hier gecombineerd met het OGC bouwblok van een Feature. Hiermee ontstaat een Feature met de eigenschappen van een Pand.

- Semantische verrijking

In de 'semantic uplift' sectie van het bag schema (andere building block) staat een JSON-LD context document wat de link legt tussen het schema en de definities in de begrippenkaders.

- Examples

In het voorbeeld zie je in de mapview hoe de json-ld context gebruikt wordt om de definities met de eigenschappen te verbinden. Hierdoor wordt expliciet wat er precies bedoelt wordt met verblijfsobject of documentnummer.
## Examples

### Pand
Een voorbeeld van een BAG Pand als GeoJSON Feature. Door de semantic uplift worden de definities van de BAG Pand en zijn eigenschappen hergebruikt, zodat de betekenis van de data duidelijk is.

#### json
```json
{
    "type": "Feature",
    "id": "c3de65af-ca00-5971-87cd-04d4bdd456f4",
    "properties": {
        "\"verblijfsobject\"": "verblijfsobject",
        "aantal_verblijfsobjecten": 1,
        "bouwjaar": 2024,
        "documentdatum": "2024-12-06",
        "documentnummer": "28041487 OD",
        "gebruiksdoel": "industriefunctie",
        "geconstateerd": "N",
        "identificatie": "0394100003049202",
        "rdf_seealso": "http://bag.basisregistraties.overheid.nl/bag/id/pand/0394100003049202",
        "status": "Bouwvergunning verleend",
        "verblijfsobject.href": [
          "https://api.pdok.nl/kadaster/bag/ogc/v2/collections/verblijfsobject/items/75d7d0cc-5dc8-5ab1-a959-09dc2b8194ed"
        ]
      },
      "geometry": {
        "type": "Polygon",
        "coordinates": [
          [
            [4.69778280718237, 52.3169768690814],
            [4.69818701155428, 52.3167762314658],
            [4.69826126055391, 52.3168324071802],
            [4.69785707066875, 52.3170330451325],
            [4.69778280718237, 52.3169768690814]
          ]
        ]
      }
    }
```

#### jsonld
```jsonld
{
  "@context": "https://nielshoffmann.github.io/bblocks-demo-register/build/annotated/examples/bag/ogcapi/context.jsonld",
  "type": "Feature",
  "id": "c3de65af-ca00-5971-87cd-04d4bdd456f4",
  "properties": {
    "\"verblijfsobject\"": "verblijfsobject",
    "aantal_verblijfsobjecten": 1,
    "bouwjaar": 2024,
    "documentdatum": "2024-12-06",
    "documentnummer": "28041487 OD",
    "gebruiksdoel": "industriefunctie",
    "geconstateerd": "N",
    "identificatie": "0394100003049202",
    "rdf_seealso": "http://bag.basisregistraties.overheid.nl/bag/id/pand/0394100003049202",
    "status": "Bouwvergunning verleend",
    "verblijfsobject.href": [
      "https://api.pdok.nl/kadaster/bag/ogc/v2/collections/verblijfsobject/items/75d7d0cc-5dc8-5ab1-a959-09dc2b8194ed"
    ]
  },
  "geometry": {
    "type": "Polygon",
    "coordinates": [
      [
        [
          4.69778280718237,
          52.3169768690814
        ],
        [
          4.69818701155428,
          52.3167762314658
        ],
        [
          4.69826126055391,
          52.3168324071802
        ],
        [
          4.69785707066875,
          52.3170330451325
        ],
        [
          4.69778280718237,
          52.3169768690814
        ]
      ]
    ]
  }
}
```

#### ttl
```ttl
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix ns1: <https://catalogus.kadaster.nl/bag/nl/page/> .
@prefix ns2: <https://www.w3.org/1999/xhtml/vocab#> .
@prefix ns3: <https://data.crow.nl/imbor/term/> .
@prefix ns4: <https://www.w3.org/2000/01/rdf-schema#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

<https://example.com/pand/c3de65af-ca00-5971-87cd-04d4bdd456f4> a geojson:Feature ;
    ns1:Documentdatum "2024-12-06" ;
    ns1:Documentnummer "28041487 OD" ;
    ns1:Gebruiksdoel "industriefunctie" ;
    ns1:Geconstateerd "N" ;
    ns1:Identificatie "0394100003049202" ;
    ns1:Status "Bouwvergunning verleend" ;
    ns3:88878766-6d5a-4382-8f91-2275b0db94e7 2024 ;
    geojson:geometry [ a geojson:Polygon ;
            geojson:coordinates ( ( ( 4.697783e+00 5.231698e+01 ) ( 4.698187e+00 5.231678e+01 ) ( 4.698261e+00 5.231683e+01 ) ( 4.697857e+00 5.231703e+01 ) ( 4.697783e+00 5.231698e+01 ) ) ) ] ;
    ns2:href <https://api.pdok.nl/kadaster/bag/ogc/v2/collections/verblijfsobject/items/75d7d0cc-5dc8-5ab1-a959-09dc2b8194ed> ;
    ns4:seeAlso <http://bag.basisregistraties.overheid.nl/bag/id/pand/0394100003049202> .


```

## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
description: BAG Pand als GeoJSON Feature
allOf:
- $ref: https://opengeospatial.github.io/bblocks/annotated-schemas/geo/features/feature/schema.yaml
- properties:
    properties:
      $ref: https://nielshoffmann.github.io/bblocks-demo-register/build/annotated/examples/bag/schema/schema.yaml

```

Links to the schema:

* YAML version: [schema.yaml](https://nielshoffmann.github.io/bblocks-demo-register/build/annotated/examples/bag/ogcapi/schema.json)
* JSON version: [schema.json](https://nielshoffmann.github.io/bblocks-demo-register/build/annotated/examples/bag/ogcapi/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "Feature": "geojson:Feature",
    "FeatureCollection": "geojson:FeatureCollection",
    "GeometryCollection": "geojson:GeometryCollection",
    "LineString": "geojson:LineString",
    "MultiLineString": "geojson:MultiLineString",
    "MultiPoint": "geojson:MultiPoint",
    "MultiPolygon": "geojson:MultiPolygon",
    "Point": "geojson:Point",
    "Polygon": "geojson:Polygon",
    "features": {
      "@container": "@set",
      "@id": "geojson:features"
    },
    "type": "@type",
    "id": "@id",
    "properties": "@nest",
    "geometry": {
      "@context": {
        "coordinates": {
          "@container": "@list",
          "@id": "geojson:coordinates"
        }
      },
      "@id": "geojson:geometry"
    },
    "bbox": {
      "@container": "@list",
      "@id": "geojson:bbox"
    },
    "links": {
      "@context": {
        "href": {
          "@type": "@id",
          "@id": "oa:hasTarget"
        },
        "rel": {
          "@context": {
            "@base": "http://www.iana.org/assignments/relation/"
          },
          "@id": "http://www.iana.org/assignments/relation",
          "@type": "@id"
        },
        "type": "dct:type",
        "hreflang": "dct:language",
        "title": "rdfs:label",
        "length": "dct:extent"
      },
      "@id": "rdfs:seeAlso"
    },
    "verblijfsobject.href": {
      "@id": "https://www.w3.org/1999/xhtml/vocab#href",
      "@type": "@id"
    },
    "bouwjaar": "https://data.crow.nl/imbor/term/88878766-6d5a-4382-8f91-2275b0db94e7",
    "documentdatum": "https://catalogus.kadaster.nl/bag/nl/page/Documentdatum",
    "documentnummer": "https://catalogus.kadaster.nl/bag/nl/page/Documentnummer",
    "gebruiksdoel": "https://catalogus.kadaster.nl/bag/nl/page/Gebruiksdoel",
    "geconstateerd": "https://catalogus.kadaster.nl/bag/nl/page/Geconstateerd",
    "identificatie": "https://catalogus.kadaster.nl/bag/nl/page/Identificatie",
    "rdf_seealso": {
      "@id": "https://www.w3.org/2000/01/rdf-schema#seeAlso",
      "@type": "@id"
    },
    "status": "https://catalogus.kadaster.nl/bag/nl/page/Status",
    "verblijfsobject": "https://catalogus.kadaster.nl/bag/nl/page/Verblijfsobject",
    "geojson": "https://purl.org/geojson/vocab#",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "oa": "http://www.w3.org/ns/oa#",
    "dct": "http://purl.org/dc/terms/",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://nielshoffmann.github.io/bblocks-demo-register/build/annotated/examples/bag/ogcapi/context.jsonld)


# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/NielsHoffmann/bblocks-demo-register](https://github.com/NielsHoffmann/bblocks-demo-register)
* Path: `_sources/bag/ogcapi`

