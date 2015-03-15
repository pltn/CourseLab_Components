<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt"
                xmlns:websoft="http://www.websoft.ru"
                version="1.0">
<!--
'*    nav_position_advanced#.xsl
'*    Copyright (c) Websoft, 2007.  All rights reserved.
-->
<xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes"/>
<xsl:param name="objectID"></xsl:param>
<xsl:template match="/"><xsl:apply-templates select="params"/></xsl:template>
<xsl:template match="params">
    <table width="100%" height="100%" cellpadding="2" cellspacing="0" border="0">
        <tr>
            <xsl:if test="position_text_show='yes'">
            <td align="right" valign="middle" nowrap="nowrap">
                <xsl:if test="position_text_show='yes'"><xsl:attribute name="width">50%</xsl:attribute></xsl:if>
                <span id="position_text">
                    <xsl:attribute name="style">font-family: <xsl:value-of select="position_font"/>; color: <xsl:value-of select="position_font_color"/>; font-weight: <xsl:value-of select="position_font_weight"/>; font-style: <xsl:value-of select="position_font_style"/>; font-size: <xsl:value-of select="position_font_size"/>px;</xsl:attribute>
                    <xsl:value-of select="position_text" />
                </span>
            </td>
            </xsl:if>
            <td valign="middle" nowrap="nowrap">
                <xsl:choose>
                    <xsl:when test="position_text_show='yes'">
                        <xsl:attribute name="width">50%</xsl:attribute>
                        <xsl:attribute name="align">left</xsl:attribute>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:attribute name="width">100%</xsl:attribute>
                        <xsl:attribute name="align">center</xsl:attribute>
                    </xsl:otherwise>
                </xsl:choose>
                <span id="position_current">
                    <xsl:attribute name="style">font-family: <xsl:value-of select="position_font"/>; color: <xsl:value-of select="position_font_color"/>; font-weight: <xsl:value-of select="position_font_weight"/>; font-style: <xsl:value-of select="position_font_style"/>; font-size: <xsl:value-of select="position_font_size"/>px;</xsl:attribute>
                    1
                </span>
                <xsl:if test="position_divider_show='yes'">
                <span id="position_div">
                    <xsl:attribute name="style">font-family: <xsl:value-of select="position_font"/>; color: <xsl:value-of select="position_font_color"/>; font-weight: <xsl:value-of select="position_font_weight"/>; font-style: <xsl:value-of select="position_font_style"/>; font-size: <xsl:value-of select="position_font_size"/>px;</xsl:attribute>
                    <xsl:value-of select="position_divider" />
                </span>
                </xsl:if>
                <xsl:if test="total_slides_show='yes'"><span id="position_total">
                    <xsl:attribute name="style">font-family: <xsl:value-of select="position_font"/>; color: <xsl:value-of select="position_font_color"/>; font-weight: <xsl:value-of select="position_font_weight"/>; font-style: <xsl:value-of select="position_font_style"/>; font-size: <xsl:value-of select="position_font_size"/>px;</xsl:attribute>
                    1
                </span></xsl:if>
            </td>
        </tr>
    </table>
</xsl:template>
</xsl:stylesheet>