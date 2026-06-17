
# Bag eigenschappen (Schema)

`tikouka.examples.bag.schema` *v0.8*

Dit blok definieert de eigenschappen van een BAG-object.

[*Status*](http://www.opengis.net/def/status): Under development

## Description

# BAG Schema voor Pand

Dit blok beschrijft de eigenschappen zoals gedefinieerd voor een pand. 
Het blok verwijst naar de schema definitie bij de bron van PDOK en dient hier dus alleen als documentatie, niet als authoratieve bron.

Dit blok kan vervolgens in andere bouwblokken gebruikt worden om het BAG Pand schema te implementeren.
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
  documentdatum:
    type: string
  documentnummer:
    type: string
  gebruiksdoel:
    type: string
  geconstateerd:
    type: string
  identificatie:
    type: string
  rdf_seealso:
    type: string
  status:
    type: string
  verblijfsobject:
    description: 'Representeert een relatie tussen dit feature en het gerefereerde
      feature. '
    items:
      type: string
      x-ogc-role: reference
      x-ogc-collectionId: verblijfsobject
    type: array
additionalProperties: true

```

Links to the schema:

* YAML version: [schema.yaml](https://nielshoffmann.github.io/bblocks-demo-register/build/annotated/examples/bag/schema/schema.json)
* JSON version: [schema.json](https://nielshoffmann.github.io/bblocks-demo-register/build/annotated/examples/bag/schema/schema.yaml)


# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/NielsHoffmann/bblocks-demo-register](https://github.com/NielsHoffmann/bblocks-demo-register)
* Path: `_sources/bag/schema`

