# OGC Building Block demos

This repository shows a number of OGC Building Block demonstrations in the context of work Geonovum is doing.

For more info on the OGC Building Block framework see [the OGC Documentation](https://ogcincubator.github.io/bblocks-docs/).

This repoistory is based on the template repository that can be found here: [https://opengeospatial.github.io/bblock-template/](https://opengeospatial.github.io/bblock-template/)


# Demo's

## Semantic annotation of a BAG Pand

These building blocks show a JSON-LD context that connects the JSON schema of a BAG Pand to the relevant terms in a vocabulary.
The context is then connected to an OGC Feature to show how this link can help make definitions explicit in a User Interface.

## OGC API Processes

Work in progress...


## Transforms

The transforms building blocks serve as a test to show the Saxonche XSLT Transformer.

The native BBlocks XSLT transformer uses lxml, which only supports XSLT v1. The [bblocks-xslt2-transform-plugin](https://github.com/Geonovum-labs/bblocks-xslt2-transform-plugin) is based on the Saxon transformer and support XSLT v2 and 3.