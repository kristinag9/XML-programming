<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <subregions>
            <xsl:for-each select="regions/region/subregions/subregion">
                <subregion>
                    <sub_region_name><xsl:call-template name="sub_region_name"/></sub_region_name>
                    <sub_region_size><xsl:call-template name="sub_region_size"/></sub_region_size>
                    <sub_region_relief><xsl:call-template name="sub_region_relief"/></sub_region_relief>
                </subregion>
            </xsl:for-each>
        </subregions>
    </xsl:template>

    <xsl:template name="region_name_id">
        <code>
            <xsl:value-of select="region/@id"/>
        </code>
        <name>
            <xsl:value-of select="region/name"/>
        </name>
    </xsl:template>

    <xsl:template name="sub_region_name">
        <xsl:value-of select="name"/>
    </xsl:template>

    <xsl:template name="sub_region_size">
        <xsl:value-of select="size"/><xsl:value-of select="size/@metric_units"/>
    </xsl:template>

    <xsl:template name="sub_region_relief">
        <relief_type><xsl:value-of select="relief/type"/></relief_type>
        <relief_avg_altitude><xsl:value-of select="relief/average_altitude"/>
            <xsl:value-of select="relief/average_altitude/@metric_units"/></relief_avg_altitude>
    </xsl:template>

</xsl:stylesheet>