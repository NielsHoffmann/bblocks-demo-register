<?xml version="1.0" encoding="UTF-8"?>

<xsl:transform
    xmlns:adms   = "http://www.w3.org/ns/adms#"
    xmlns:cnt    = "http://www.w3.org/2011/content#"
    xmlns:dc     = "http://purl.org/dc/elements/1.1/"
    xmlns:dcat   = "http://www.w3.org/ns/dcat#"
    xmlns:dct    = "http://purl.org/dc/terms/"
    xmlns:dctype = "http://purl.org/dc/dcmitype/"
    xmlns:dqv    = "http://www.w3.org/ns/dqv#"
    xmlns:earl   = "http://www.w3.org/ns/earl#"
    xmlns:foaf   = "http://xmlns.com/foaf/0.1/"
    xmlns:gco    = "http://www.isotc211.org/2005/gco"
    xmlns:geodcatap = "http://data.europa.eu/930/"
    xmlns:gmd    = "http://www.isotc211.org/2005/gmd"
    xmlns:gml    = "http://www.opengis.net/gml"
    xmlns:gmx    = "http://www.isotc211.org/2005/gmx"
    xmlns:gsp    = "http://www.opengis.net/ont/geosparql#"
    xmlns:i      = "http://inspire.ec.europa.eu/schemas/common/1.0"
    xmlns:i-gp   = "http://inspire.ec.europa.eu/schemas/geoportal/1.0"
    xmlns:locn   = "http://www.w3.org/ns/locn#"
    xmlns:owl    = "http://www.w3.org/2002/07/owl#"
    xmlns:org    = "http://www.w3.org/ns/org#"
    xmlns:prov   = "http://www.w3.org/ns/prov#"
    xmlns:rdf    = "http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:rdfs   = "http://www.w3.org/2000/01/rdf-schema#"
    xmlns:schema = "http://schema.org/"
    xmlns:sdmx-attribute = "http://purl.org/linked-data/sdmx/2009/attribute#"
    xmlns:skos   = "http://www.w3.org/2004/02/skos/core#"
    xmlns:srv    = "http://www.isotc211.org/2005/srv"
    xmlns:vcard  = "http://www.w3.org/2006/vcard/ns#"
    xmlns:wdrs   = "http://www.w3.org/2007/05/powder-s#"
    xmlns:xlink  = "http://www.w3.org/1999/xlink"
    xmlns:xsi    = "http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xsl    = "http://www.w3.org/1999/XSL/Transform"
    exclude-result-prefixes="earl gco gmd gml gmx i i-gp srv xlink xsi xsl wdrs"
    version="2.0">

  <xsl:output method="xml"
              indent="yes"
              encoding="utf-8" />

    <xsl:param name="xsd">http://www.w3.org/2001/XMLSchema#</xsl:param>

  <!--

  Master template
  ===============

-->

  <xsl:template match="/">
    <rdf:RDF>
      <xsl:apply-templates select="gmd:MD_Metadata|//gmd:MD_Metadata"/>
    </rdf:RDF>
  </xsl:template>

<!--

  Metadata template
  =================

-->

  <xsl:template match="gmd:MD_Metadata|//gmd:MD_Metadata">

    <xsl:param name="MetadataUri">
    <xsl:variable name="mURI" select="gmd:fileIdentifier/gco:CharacterString"/>
    <xsl:if test="$mURI != '' and ( starts-with($mURI, 'http://') or starts-with($mURI, 'https://') )">
      <xsl:value-of select="$mURI"/>
    </xsl:if>
  </xsl:param>

  <xsl:param name="ResourceTitle">
      <xsl:for-each select="gmd:identificationInfo[1]/*/gmd:citation/*/gmd:title">
        <dct:title >
          <xsl:value-of select="normalize-space(gco:CharacterString)"/>
        </dct:title>
      </xsl:for-each>
    </xsl:param>

    <dcat:Dataset rdf:about="{$MetadataUri}">
      <xsl:apply-templates select="gmd:identificationInfo/gmd:MD_DataIdentification"/>
      
      <xsl:for-each select="gmd:fileIdentifier/gco:CharacterString">
          <dct:identifier><xsl:value-of select="."/></dct:identifier>
        </xsl:for-each>
    
     <xsl:copy-of select="$ResourceTitle"/>
    
    </dcat:Dataset>

   

  </xsl:template>
</xsl:transform>
