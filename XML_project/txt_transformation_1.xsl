<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="text" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        Географски области в България
        <xsl:for-each select="/regions/region">
            <br>Номер: <xsl:value-of select="@id"/></br>
            Име: <xsl:call-template name="region_name"/>
            Бележка: <xsl:call-template name="region_note"/>
            Географско положение: <xsl:call-template name="situation"/>
            Подобласти: <xsl:call-template name="sub_regions"/>&#160;
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="region_name">
        <xsl:value-of
                select="name/."/>&#160;
    </xsl:template>

    <xsl:template name="region_note">
        <xsl:choose>
            <xsl:when test="note"><xsl:value-of select="note"/></xsl:when>
            <xsl:otherwise>Няма</xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="situation">
        <xsl:value-of
                select="situation/part_of_Bulgaria/."/>&#160;
    </xsl:template>

    <xsl:template name="sub_regions">
        <xsl:for-each select="subregions/subregion">
            Име: <xsl:value-of select="name"/>
            Бележка: <xsl:call-template name="region_note"/>
            Площ: <xsl:value-of select="size"/> <xsl:value-of select="size/@metric_units"/>
            Тип релеф: <xsl:value-of select="relief/type"/>&#160;
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
