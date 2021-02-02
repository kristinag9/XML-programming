<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <regions>
            <xsl:for-each select="regions/region">
                <region>
                    <xsl:call-template name="region_name_id"/>
                    <climate_type><xsl:call-template name="region_climate"/></climate_type>
                    <relief_type><xsl:call-template name="region_relief"/></relief_type>
                    <plants><xsl:call-template name="region_flora"/></plants>
                    <animals><xsl:call-template name="region_fauna"/></animals>
                </region>
            </xsl:for-each>
        </regions>
    </xsl:template>

    <xsl:template name="region_name_id">
        <code>
            <xsl:value-of select="@id"/>
        </code>
        <name>
            <xsl:value-of select="name"/>
        </name>
    </xsl:template>

    <xsl:template name="region_climate">
        <xsl:value-of select="climate/type"/>
    </xsl:template>

    <xsl:template name="region_relief">
        <xsl:value-of select="relief/type"/>
    </xsl:template>

    <xsl:template name="region_flora">
        <xsl:value-of select="flora"/>
    </xsl:template>

    <xsl:template name="region_fauna">
        <xsl:value-of select="fauna"/>
    </xsl:template>
</xsl:stylesheet>