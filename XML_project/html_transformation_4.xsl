<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <style>
                    * { padding: 0; margin: 0; }

                    body {
                    font-family: Arial, Helvetica, sans-serif;
                    font-size: 13px;
                    }
                    #wrapper {
                    margin: 0 auto;
                    width: 922px;
                    }
                    #header {
                    color: #333;
                    width: 900px;
                    float: left;
                    padding: 10px;
                    border: 1px solid #ccc;
                    height: 70px;
                    margin: 10px 0px 5px 0px;
                    background:#009900;
                    font-family: "Lucida Console", monospace
                    font-weight: bold;
                    font-size: 18px;
                    text-align: center
                    }
                    #navigation {
                    float: left;
                    width: 900px;
                    color: #333;
                    padding: 10px;
                    border: 1px solid #ccc;
                    margin: 0px 0px 5px 0px;
                    background-color:#66ff66;
                    font-family: "Verdana", sans-serif;
                    font-style: italic;
                    }
                    #leftcolumn {
                    color: #333;
                    border: 1px solid #ccc;
                    background:#ccffcc;
                    margin: 0px 5px 5px 0px;
                    padding: 10px;
                    height: 350px;
                    width: 250px;
                    float: left;
                    font-family: "Garamond", serif;
                    font-style: normal;
                    font-size: 16px;
                    }
                    #rightcolumn {
                    float: right;
                    color: #333;
                    border: 1px solid #ccc;
                    background:#ccffcc;
                    margin: 0px 0px 5px 0px;
                    padding: 10px;
                    height: 350px;
                    width: 600px;
                    display: inline;
                    font-family: "Garamond", serif;
                    font-style: normal;
                    font-size: 16px;
                    }
                    #footer {
                    width: 900px;
                    clear: both;
                    color: #333;
                    border: 1px solid #ccc;
                    background-color:#99ff99;
                    margin: 0px 0px 10px 0px;
                    padding: 10px;
                    font-family: "Verdana", sans-serif;
                    font-style: italic;
                    text-align: center;
                    }
                </style>
                <title>Географски области в България</title>
            </head>
            <body>
                <xsl:for-each select="regions/region">
                <div id="wrapper">
                    <div id="header">
                        <h1>
                            <xsl:call-template name="region_name"/>
                        </h1>
                    </div>
                    <div id="navigation">
                        <xsl:call-template name="situation_note"/>
                    </div>
                    <div id="leftcolumn">
                        <xsl:call-template name="region_info"/>
                    </div>
                    <div id="rightcolumn">
                        <xsl:call-template name="region_soil_climate"/>
                    </div>
                    <div id="footer">
                        <xsl:call-template name="soil_note"/>
                    </div>
                </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="region_name">
        <xsl:value-of select="name"/>
    </xsl:template>

    <xsl:template name="situation_note">
        <xsl:choose>
            <xsl:when test="situation/note"><xsl:value-of select="situation/note"/></xsl:when>
            <xsl:otherwise>Няма</xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="region_info">
        Заема <xsl:value-of select="situation/part_of_Bulgaria"/>.
        <br>Средна надморска височина: <xsl:value-of select="relief/average_altitude"/>&#160;
            <xsl:value-of select="relief/average_altitude/@metric_units"/></br>
        Площ: <xsl:value-of select="area/size"/>&#160;<xsl:value-of select="area/size/@metric_units"/>
    </xsl:template>

    <xsl:template name="region_soil_climate">
        Най-разпространени почви: <xsl:value-of select="soil/most_common"/>
        <br>Средна годишна температура: <xsl:value-of select="climate/average_temperature"/>&#160;
            <xsl:value-of select="climate/average_temperature/@unit"/></br>
        Флора: <xsl:value-of select="flora"/>
        <br>Фауна: <xsl:value-of select="fauna"/></br>
    </xsl:template>

    <xsl:template name="soil_note">
        <xsl:choose>
            <xsl:when test="soil/note"><xsl:value-of select="soil/note"/></xsl:when>
            <xsl:otherwise>Няма</xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>