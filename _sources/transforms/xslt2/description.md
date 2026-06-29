# Voorbeeld van een Building block wat een transformatie uit kan voeren met een XSLT2 processor

__!! Work in progress !!__

Met deze building blocks willen we onderzoeken en demonstreren hoe de transformatie van ISO-19115 naar DCAT gedaan kan worden.

Dit BBlock gebruikt een custom XSLT transformer op basis van saxonche voor ondersteuning van XSLT2 en 3.

-- 

Het 'iso19139 to dcat-ap example' gebruikt een stukje uit de Semic Geodcat-ap transformation die xslt2 functies gebruikt.
Deze gaat dus fout met de libxml gebaseerde transformer en werkt wel met de saxonche gebaseerde transformer.

Als extra check is het basis voorbeeld ook opgenomen om te testen dat de saxonche gebaseerde transformer ook nog de logica uitvoert die in het libxml gebaseerde voorbeeld werkt.