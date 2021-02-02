<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="text" encoding="UTF-8" indent="no"/>

    <xsl:template match="/">
        Граници на географска област:&#160;
        <xsl:for-each select="/regions/region">
         <xsl:value-of select="@id"/>.<xsl:value-of select="name"/>&#160;
            Източна граница: <xsl:value-of select="borders/east/name"/>
            Дължина: <xsl:value-of select="borders/east/length"/> <xsl:value-of select="borders/east/length/@metric_units"/>
            Западна граница: <xsl:value-of select="borders/west/name"/>
            Дължина: <xsl:value-of select="borders/west/length"/> <xsl:value-of select="borders/west/length/@metric_units"/>
            Северна граница: <xsl:value-of select="borders/north/name"/>
            Дължина: <xsl:value-of select="borders/north/length"/> <xsl:value-of select="borders/north/length/@metric_units"/>
            Южна граница: <xsl:value-of select="borders/south/name"/>
            Дължина: <xsl:value-of select="borders/south/length"/> <xsl:value-of select="borders/south/length/@metric_units"/>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>