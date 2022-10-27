<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : thuvien.xsl
    Created on : October 27, 2022, 11:01 PM
    Author     : Bang
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="thuvien">
        <html>
            <head>
                <title>thuvien.xsl</title>
            </head>
            <body>
                <p>Ten thu vien:<xsl:value-of select="@tentv"/></p>
                <xsl:for-each select="nhaxb">
                <p>Ten nha xuat ban:<xsl:value-of select="@tennxb"/></p>
                <table border="1" cellpadding="5px" style="border-collapse:collapse">
                    <tr>
                        <th>Ma sach</th>
                        <th>Ten sach</th>
                        <th>The loai</th>
                        <th>So trang</th>
                        <th>Gia sach</th>
                    </tr>
                    <xsl:for-each select="sach">
                        <tr>
                            <td>
                                <xsl:value-of select="@masach"/>
                            </td>
                            <td><xsl:value-of select="tensach"/></td>
                            <td><xsl:value-of select="theloai"/></td>
                            <td><xsl:value-of select="sotrang"/></td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="sotrang > 150">
                                   (int)(100*4000)+(50*3000)+(<xsl:value-of select="sotrang"/>-150)*2000
                                    </xsl:when>
                                    <xsl:when test="sotrang > 100">
                                   (int)(100*4000)+(<xsl:value-of select="sotrang"/>-100)*3000
                                    </xsl:when>
                                    <xsl:otherwise>
                                        (int)<xsl:value-of select="sotrang"/>*4000
                                    </xsl:otherwise>
                                </xsl:choose>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                <br/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
