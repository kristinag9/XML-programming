<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <style>
                    table {
                    font-family: serif, times new roman;
                    border-collapse: collapse;
                    width: 100%;
                    }

                    td, th {
                    border: 1px solid #dddddd;
                    text-align: center;
                    padding: 5px;
                    }

                    tr:nth-child(even) {
                    background-color: #ff6347;
                    }
                </style>
                <title>Географски области в България</title>
            </head>
            <body>
                <table>
                    <tr>
                        <th>Номер</th>
                        <th>Име</th>
                        <th>Области, които тя обхваща изцяло</th>
                        <th>Области, които тя обхваща частично</th>
                    </tr>
                    <xsl:for-each select="regions/region">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:call-template name="region_name"/></td>
                            <td><xsl:call-template name="full_districts"/></td>
                            <td><xsl:call-template name="partial_districts"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="region_name">
        <xsl:value-of select="name/."/>
    </xsl:template>

    <xsl:template name="full_districts">
        <xsl:choose><xsl:when test="situation/districts/full">
        <xsl:for-each select="situation/districts/full/name"><xsl:value-of select="."/>&#160;
        </xsl:for-each>
        </xsl:when><xsl:otherwise>Няма такива.</xsl:otherwise></xsl:choose>
    </xsl:template>

    <xsl:template name="partial_districts">
        <xsl:for-each
                select="situation/districts/partial/name"><xsl:value-of select="."/>&#160;</xsl:for-each>
    </xsl:template>

</xsl:stylesheet>