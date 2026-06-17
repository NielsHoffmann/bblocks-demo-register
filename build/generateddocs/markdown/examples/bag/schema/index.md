
# Bag eigenschappen (Schema)

`tikouka.examples.bag.schema` *v0.8*

Dit blok definieert de eigenschappen van een BAG-object.

[*Status*](http://www.opengis.net/def/status): Under development

## Description

# BAG Schema voor Pand

Dit blok beschrijft de eigenschappen zoals gedefinieerd voor een pand. 

Dit blok kan vervolgens in andere bouwblokken gebruikt worden om het BAG Pand schema te implementeren.

- Semantische verrijking

In de 'semantic uplift' sectie staat een JSON-LD context document wat de link legt tussen het schema en de definities in de begrippenkaders.
Deze context wordt in buildingblocks die gebruik maken van dit buildingblock gebruikt.

NB. Voor deze demo is het schema enigszins aangepast om te demonstreren hoe de functionaliteit van de OGC BuildingBlocks gebruikt kan worden om verschillende Schema's met elkaar te verbinden. De geometrie en id eigenschap zijn verwijderd uit het schema omdat deze uit hun oorsprong vinden in de OGC Feature definitie.
## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
$id: https://api.pdok.nl/kadaster/bag/ogc/v2/collections/pand/schema
title: Pand
description: 'Een zelfstandig bouwwerk, zowel zelfstandig in de manier hoe het is
  gebouwd als waarvoor het is bedoeld om te gebruiken. Een pand voldoet ook aan de
  volgende eisen: een pand is direct en voor lange tijd met de aarde verbonden (een
  pand is niet makkelijk te verplaatsen) en een pand kun je binnengaan en afsluiten.
  Een eenheid kan alleen een pand zijn als het voldoet aan alle eisen uit de Catalogus
  BAG 2018. Voor meer informatie zie: bag:pand '
type: object
properties:
  aantal_verblijfsobjecten:
    type: integer
  bouwjaar:
    type: integer
    x-jsonld-id: https://data.crow.nl/imbor/term/88878766-6d5a-4382-8f91-2275b0db94e7
  documentdatum:
    type: string
    x-jsonld-id: https://catalogus.kadaster.nl/bag/nl/page/Documentdatum
  documentnummer:
    type: string
    x-jsonld-id: https://catalogus.kadaster.nl/bag/nl/page/Documentnummer
  gebruiksdoel:
    type: string
    x-jsonld-id: https://catalogus.kadaster.nl/bag/nl/page/Gebruiksdoel
  geconstateerd:
    type: string
    x-jsonld-id: https://catalogus.kadaster.nl/bag/nl/page/Geconstateerd
  identificatie:
    type: string
    x-jsonld-id: https://catalogus.kadaster.nl/bag/nl/page/Identificatie
  rdf_seealso:
    type: string
    x-jsonld-id: https://www.w3.org/2000/01/rdf-schema#seeAlso
    x-jsonld-type: '@id'
  status:
    type: string
    x-jsonld-id: https://catalogus.kadaster.nl/bag/nl/page/Status
  verblijfsobject:
    description: 'Representeert een relatie tussen dit feature en het gerefereerde
      feature. '
    items:
      type: string
      x-ogc-role: reference
      x-ogc-collectionId: verblijfsobject
    type: array
    x-jsonld-id: https://catalogus.kadaster.nl/bag/nl/page/Verblijfsobject
additionalProperties: true
x-jsonld-extra-terms:
  verblijfsobject.href:
    x-jsonld-id: https://www.w3.org/1999/xhtml/vocab#href
    x-jsonld-type: '@id'

```

Links to the schema:

* YAML version: [schema.yaml](https://nielshoffmann.github.io/bblocks-demo-register/build/annotated/examples/bag/schema/schema.json)
* JSON version: [schema.json](https://nielshoffmann.github.io/bblocks-demo-register/build/annotated/examples/bag/schema/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
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
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://nielshoffmann.github.io/bblocks-demo-register/build/annotated/examples/bag/schema/context.jsonld)


# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/NielsHoffmann/bblocks-demo-register](https://github.com/NielsHoffmann/bblocks-demo-register)
* Path: `_sources/bag/schema`

