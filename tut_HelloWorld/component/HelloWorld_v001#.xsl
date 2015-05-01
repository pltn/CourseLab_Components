<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                 xmlns:msxsl="urn:schemas-microsoft-com:xslt"
                 xmlns:websoft="http://www.websoft.ru"
                 version="1.0">
<xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes"/>

<xsl:param name="moduleImagesFolder"></xsl:param>
<xsl:param name="imagesFolder"></xsl:param>
<xsl:param name="objectID"></xsl:param>
<xsl:param name="width"></xsl:param>
<xsl:param name="height"></xsl:param>

<xsl:template match="/">
<xsl:apply-templates select="params"/>
</xsl:template>

<xsl:template match="params">
Привет, <xsl:value-of select="ExampleValue"/>!
</xsl:template>
</xsl:stylesheet>