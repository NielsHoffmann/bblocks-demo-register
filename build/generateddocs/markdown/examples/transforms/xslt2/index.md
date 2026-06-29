
# XSLT2 Transforms example (Schema)

`geonovum.examples.transforms.xslt2` *v0.1*

A sample building block to showcase transforms

[*Status*](http://www.opengis.net/def/status): Under development

## Description

# Voorbeeld van een Building block wat een transformatie uit kan voeren met een XSLT2 processor

__!! Work in progress !!__

Met deze building blocks willen we onderzoeken en demonstreren hoe de transformatie van ISO-19115 naar DCAT gedaan kan worden.

Dit BBlock gebruikt een custom XSLT transformer op basis van saxonche voor ondersteuning van XSLT2 en 3.

-- 

Het 'iso19139 to dcat-ap example' gebruikt een stukje uit de Semic Geodcat-ap transformation die xslt2 functies gebruikt.
Deze gaat dus fout met de libxml gebaseerde transformer en werkt wel met de saxonche gebaseerde transformer.

Als extra check is het basis voorbeeld ook opgenomen om te testen dat de saxonche gebaseerde transformer ook nog de logica uitvoert die in het libxml gebaseerde voorbeeld werkt.
## Examples

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


# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/Geonovum-labs/bblocks-demo-register](https://github.com/Geonovum-labs/bblocks-demo-register)
* Path: `_sources/transforms/xslt2`

