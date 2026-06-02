# Air Quality Sensor Station

__NOTE__ This block is part of the OGC Rainbow Tutorials: https://ogcincubator.github.io/rainbow-docs/tutorials/applied-ogc-blocks/introduction

---

An OGC Block describing a fixed air quality monitoring station as a GeoJSON Feature.

The feature's `properties` include basic station metadata and a `hasObservations`
array of SOSA Observation objects, each capturing a measurement of an atmospheric
property (such as NO₂ concentration or PM10 levels) at a specific point in time.

Semantic annotations are provided for all locally defined properties. Properties
inherited from the base GeoJSON Feature and SOSA Observation blocks carry their
own annotations and do not need to be re-declared.