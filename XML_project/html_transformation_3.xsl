<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <style>
                    #doc2 {
                    width:73.074em;*width:71.313em;min-width:950px;}

                    #doc3 {
                    margin:auto 10px;
                    width:auto;}

                    .yui-b{position:relative;}
                    .yui-b{_position:static;}
                    #yui-main .yui-b{position:static;}

                    #yui-main {width:100%;}
                    .yui-t1 #yui-main,
                    .yui-t2 #yui-main,
                    .yui-t3 #yui-main{float:right;margin-left:-25em;}

                    .yui-t4 #yui-main,
                    .yui-t5 #yui-main,
                    .yui-t6 #yui-main{float:left;margin-right:-25em;}

                    .yui-t1 .yui-b {
                    float:left;
                    width:12.3207em;*width:12.0106em;}
                    .yui-t1 #yui-main .yui-b{
                    margin-left:13.3207em;*margin-left:13.0106em;
                    }

                    .yui-t2 .yui-b {
                    float:left;
                    width:13.8456em;*width:13.512em;}
                    .yui-t2 #yui-main .yui-b {
                    margin-left:14.8456em;*margin-left:14.512em;
                    }

                    .yui-t3 .yui-b {
                    float:left;
                    width:23.0759em;*width:22.52em;}
                    .yui-t3 #yui-main .yui-b {
                    margin-left:24.0759em;*margin-left:23.52em;
                    }

                    .yui-t4 .yui-b {
                    float:right;
                    width:13.8456em;*width:13.512em;}
                    .yui-t4 #yui-main .yui-b {
                    margin-right:14.8456em;*margin-right:14.512em;
                    }

                    .yui-t5 .yui-b {
                    float:right;
                    width:18.4608em;*width:18.016em;}
                    .yui-t5 #yui-main .yui-b {
                    margin-right:19.4608em;*margin-right:19.016em;
                    }

                    .yui-t6 .yui-b {
                    float:right;
                    width:23.0759em;*width:22.52em;}
                    .yui-t6 #yui-main .yui-b {
                    margin-right:24.0759em;*margin-right:23.52em;
                    }

                    .yui-t7 #yui-main .yui-b {
                    display:block;margin:0 0 1em 0;
                    }
                    #yui-main .yui-b {float:none;width:auto;}
                    /* GRIDS (not TEMPLATES) */
                    .yui-g .yui-u,
                    .yui-g .yui-g,
                    .yui-gc .yui-u,
                    .yui-gc .yui-g .yui-u,
                    .yui-ge .yui-u,
                    .yui-gf .yui-u{float:right;display:inline;}
                    .yui-g div.first,
                    .yui-gc div.first,
                    .yui-gc div.first div.first,
                    .yui-gd div.first,
                    .yui-ge div.first,
                    .yui-gf div.first{float:left;}
                    .yui-g .yui-u,
                    .yui-g .yui-g{width:49.1%;}
                    .yui-g .yui-g .yui-u,
                    .yui-gc .yui-g .yui-u {width:48.1%;}
                    .yui-gb .yui-u,
                    .yui-gc .yui-u,
                    .yui-gd .yui-u{float:left;margin-left:2%;*margin-left:1.895%;width:32%;}
                    .yui-gb div.first,
                    .yui-gc div.first,
                    .yui-gd div.first{margin-left:0;}
                    .yui-gc div.first,
                    .yui-gd .yui-u{width:66%;}
                    .yui-gd div.first{width:32%;}
                    .yui-ge .yui-u{width:24%;}
                    .yui-ge div.first,
                    .yui-gf .yui-u{width:74.2%;}
                    .yui-gf div.first{width:24%;}
                    .yui-ge div.first{width:74.2%;}
                    #bd:after,
                    .yui-g:after,
                    .yui-gb:after,
                    .yui-gc:after,
                    .yui-gd:after,
                    .yui-ge:after,
                    .yui-gf:after{content:".";display:block;height:0;clear:both;visibility:hidden;}
                    #bd,
                    .yui-g,
                    .yui-gb,
                    .yui-gc,
                    .yui-gd,
                    .yui-ge,
                    .yui-gf{zoom:1;}


                    /* Basic Element Formatting */

                    #header{
                    height:100px;
                    background-color:#FFCCFF;
                    font-size: 24px;
                    text-align: center;
                    margin:20;
                    padding:0;
                    font-family: "Arial", serif;
                    font-weight: bold;
                    }

                    #header h1{
                    font-size:1em;
                    margin:0;
                    padding:10px;
                    background-color:#FFCCFF;
                    }

                    #header h1 a{
                    color:#000000;
                    background-color:#FFCCFF;
                    }

                    .content{
                    font-family: "Verdana", sans-serif;
                    font-weight: bold;
                    height:200px;
                    background:#CC0066;
                    border-top:#FFFFFF 2px solid;
                    margin:0;
                    padding:0;
                    text-align: center;
                    line-height: 1.8;
                    }

                    #secondary{
                    font-family: "Verdana", sans-serif;
                    font-weight: bold;
                    height:200px;
                    background-color:#FFCCFF;
                    border-top:#FFFFFF 2px solid;
                    margin:0;
                    padding:0;
                    text-align: center;
                    line-height: 1.8;
                    }

                    #secondaryFull{
                    height:50px;
                    background-color:#FFCCFF;
                    border-top:#FFFFFF 2px solid;
                    margin:0;
                    padding:0;
                    }

                    #footer{
                    font-family: "Verdana", sans-serif;
                    font-weight: bold;
                    text-align: center;
                    height:50px;
                    background:#993366;
                    border-top:#FFFFFF 2px solid;
                    margin:10;
                    padding:0;
                    }
                </style>
                <title>Географски области в България</title>
            </head>
            <body>
                <xsl:for-each select="regions/region">
                    <div id="doc" class="yui-t7">
                        <div id="hd">
                            <div id="header">
                                <h1>Географска област:
                                    <xsl:call-template name="region_name"/>
                                </h1>
                            </div>
                        </div>
                        <div id="bd">
                            <div id="yui-main">
                                <div class="yui-b">
                                    <div class="yui-gd">
                                        <div class="yui-u first">
                                            <div class="content">
                                                <xsl:call-template name="region_soil"/>
                                            </div>
                                        </div>
                                        <div class="yui-u">
                                            <div class="content">
                                                <xsl:call-template name="region_climate"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="yui-b">
                                <div id="secondary">
                                    <xsl:call-template name="soil_note"/>
                                </div>
                            </div>
                        </div>
                        <div id="ft">
                            <div id="footer">
                                <xsl:call-template name="region_note"/>
                            </div>
                        </div>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="region_name">
        <xsl:value-of select="name"/>
    </xsl:template>

    <xsl:template name="region_climate">
        Тип климат:
            <xsl:value-of select="climate/type"/>&#160;
        <br>Средна годишна температура:
            <xsl:value-of select="climate/average_temperature"/>&#160;<xsl:value-of select="climate/average_temperature/@unit"/></br>
        Режим на валежите:
            <xsl:value-of select="climate/rain_mode"/>
        <br>Преобладаващ тип вятър:
            <xsl:value-of select="climate/wind_type"/></br>
    </xsl:template>

    <xsl:template name="region_soil">
        Най-разпространени почви: <xsl:value-of select="soil/most_common"/>
        <br>Други почви: <xsl:value-of select="soil/other"/></br>
    </xsl:template>

    <xsl:template name="soil_note">
        <xsl:choose>
            <xsl:when test="soil/note"><xsl:value-of select="soil/note"/></xsl:when>
            <xsl:otherwise>Няма</xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="region_note">
        <xsl:choose>
            <xsl:when test="note"><xsl:value-of select="note"/></xsl:when>
            <xsl:otherwise>Няма</xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>