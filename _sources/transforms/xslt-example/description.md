# Voorbeeld van een Building block wat een transformatie uit kan voeren

__!! Work in progress !!__

Met deze building blocks willen we onderzoeken en demonstreren hoe de transformatie van ISO-19115 naar DCAT gedaan kan worden

Dit Buildingblock gebruikt de ingebouwde XSLT transformer op basis van libxml. Het probleem hiermee is dat libxml alleen XSLT v1 ondersteunt.

Het tweede voorbeeld gebruikt een XSLT met nieuwere logica, waardoor de transformatie niet lukt met de ingebouwde transformer.

Dit is de baseline om te testen of de [bblocks-xslt2-transform-plugin](https://github.com/Geonovum-labs/bblocks-xslt2-transform-plugin) geavanceerde functies wel goed uitvoert. Dit gebeurt in het geonovum.examples.transforms.xslt2 BBlock