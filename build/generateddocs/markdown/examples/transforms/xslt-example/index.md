
# XSLT Transforms example (Schema)

`geonovum.examples.transforms.xslt-example` *v0.1*

A sample building block to showcase transforms

[*Status*](http://www.opengis.net/def/status): Under development

## Description

# Voorbeeld van een Building block wat een transformatie uit kan voeren

__!! Work in progress !!__

Met deze building blocks willen we onderzoeken en demonstreren hoe de transformatie van ISO-19115 naar DCAT gedaan kan worden

Dit Buildingblock gebruikt de ingebouwde XSLT transformer op basis van libxml. Het probleem hiermee is dat libxml alleen XSLT v1 ondersteunt.

Het tweede voorbeeld gebruikt een XSLT met nieuwere logica, waardoor de transformatie niet lukt met de ingebouwde transformer.

Dit is de baseline om te testen of de [bblocks-xslt2-transform-plugin](https://github.com/Geonovum-labs/bblocks-xslt2-transform-plugin) geavanceerde functies wel goed uitvoert. Dit gebeurt in het geonovum.examples.transforms.xslt2 BBlock
## Examples

### Example for XSLT transform
#### xml
```xml
<?xml version="1.0"?>
<Article>
  <Title>My Article</Title>
  <Authors>
    <Author>Mr. Foo</Author>
    <Author>Mr. Bar</Author>
  </Authors>
  <Body>This is my article text.</Body>
</Article>
```


### iso19139 to dcat-ap example
#### xml
```xml
<?xml version="1.0" encoding="UTF-8"?>
<gmd:MD_Metadata xmlns:gmd="http://www.isotc211.org/2005/gmd" xmlns:gco="http://www.isotc211.org/2005/gco" xmlns:csw="http://www.opengis.net/cat/csw/2.0.2" xmlns:gmx="http://www.isotc211.org/2005/gmx" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:gml="http://www.opengis.net/gml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:srv="http://www.isotc211.org/2005/srv" xmlns:gts="http://www.isotc211.org/2005/gts" xmlns:gsr="http://www.isotc211.org/2005/gsr" xsi:schemaLocation="http://www.isotc211.org/2005/gmd http://schemas.opengis.net/iso/19139/20060504/gmd/gmd.xsd http://www.isotc211.org/2005/gmx http://schemas.opengis.net/iso/19139/20060504/gmx/gmx.xsd">
  <gmd:fileIdentifier>
    <gco:CharacterString>4e2ef670-cddd-11dd-ad8b-0800200c9a66</gco:CharacterString>
  </gmd:fileIdentifier>
  <gmd:language>
    <gmd:LanguageCode codeList="http://www.loc.gov/standards/iso639-2/" codeListValue="dut">Nederlands; Vlaams</gmd:LanguageCode>
  </gmd:language>
  <gmd:identificationInfo>
    <gmd:MD_DataIdentification>
      <gmd:citation>
        <gmd:CI_Citation>
          <gmd:title>
            <gco:CharacterString>Stads- en Dorpsgezichten</gco:CharacterString>
          </gmd:title>
          <gmd:alternateTitle>
            <gco:CharacterString>beschermde gezichten</gco:CharacterString>
          </gmd:alternateTitle>
          </gmd:CI_Citation>
      </gmd:citation>
    </gmd:MD_DataIdentification>
  </gmd:identificationInfo>
</gmd:MD_Metadata>

```

## Schema

```yaml
type: object
properties:
  one:
    type: number
  two:
    type: number
  string:
    type: string

```

Links to the schema:

* YAML version: [schema.yaml](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/transforms/xslt-example/schema.json)
* JSON version: [schema.json](https://geonovum-labs.github.io/bblocks-demo-register/build/annotated/examples/transforms/xslt-example/schema.yaml)


# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/Geonovum-labs/bblocks-demo-register](https://github.com/Geonovum-labs/bblocks-demo-register)
* Path: `_sources/transforms/xslt-example`

