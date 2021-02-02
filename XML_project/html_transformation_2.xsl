<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    body  {
                    margin: 0;
                    padding: 50px 0 50px 0;
                    font-family: "Myriad Pro";
                    text-align: center;
                    }

                    #container {
                    width: 780px;
                    margin: 0 auto;
                    }

                    #header {
                    height:100px;
                    }

                    #logo {
                    padding: 10px 0 0 30px;
                    text-align: center;
                    }

                    #logo a {
                    color: #647c00;
                    text-decoration: none;
                    font-size: 32px;
                    font-family: cursive, Lucida Handwriting;
                    text-align: center;
                    }

                    h1 {
                    margin: 0px;
                    color: #647c00;
                    font-size:24px;
                    font-weight: normal;
                    }

                    h2 {
                    color: #647c00;
                    font-size: 24px;
                    margin: 20px 0 0 0;
                    }

                    #main {
                    background-image:url(images/bg.gif);
                    }

                    #text {
                    margin: 0 220px 0 0;
                    padding: 20px 30px 30px 30px;
                    color: #2B370C;
                    font-size: 14px;
                    line-height: 19px;
                    text-align: center;
                    }

                    .clear {
                    clear:both;
                    }
                </style>
            </head>
            <body>
                <xsl:for-each select="regions/region">
                    <div class="main">
                    <div id="logo">
                        <a>Географски области в България</a>
                        <div id="header">
                            <h1>Номер: <xsl:value-of select="@id"/></h1>
                            <h2><xsl:value-of select="name"/></h2>
                        </div>
                    </div>
                    <div class="body">
                        <xsl:call-template name="region_area"/>
                        Релеф:<xsl:call-template name="region_relief"/>
                    </div>
                    <div class="text">
                        <p><em>Допълнителна информация</em></p>
                        <xsl:call-template name="region_note"/>
                        <xsl:call-template name="climate_note"/>
                    </div>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="region_area">
        Процент: <xsl:value-of select="area/percent"/>&#160;<xsl:value-of select="area/percent/@percentage"/>&#160;
        <br>Площ: <xsl:value-of select="area/size"/>&#160;<xsl:value-of select="area/size/@metric_units"/></br>
    </xsl:template>

    <xsl:template name="region_relief">
        <br>Наличие на високи планини:
                    <xsl:value-of select="relief/mountain"/><xsl:value-of select="relief/mountain/@has"/>&#160;</br>
        Тип релеф:
                    <xsl:value-of select="relief/type"/>&#160;
        <br>Средна надморска височина:
            <xsl:value-of select="relief/average_altitude"/><xsl:value-of select="relief/average_altitude/@metric_units"/>&#160;</br>
    </xsl:template>

    <xsl:template name="region_note">
        <xsl:choose>
            <xsl:when test="note"><xsl:value-of select="note"/>&#160;</xsl:when>
            <xsl:otherwise>Няма</xsl:otherwise>
        </xsl:choose>&#160;
    </xsl:template>

    <xsl:template name="climate_note">
        <xsl:choose>
            <xsl:when test="climate/note"><br><xsl:value-of select="climate/note"/>&#160;</br></xsl:when>
            <xsl:otherwise>Няма</xsl:otherwise>
        </xsl:choose>&#160;
    </xsl:template>
</xsl:stylesheet>