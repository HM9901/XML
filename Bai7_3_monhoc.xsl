<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Thông Tin Môn Học</title>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <td>MaMH</td>
                        <td>tenMH</td>
                        <td>soGio</td>
                    </tr>
                    <xsl:for-each select="QLMH/MonHoc">
                        <xsl:if test="soGio&gt;30">
                            <tr>
                                <td><xsl:value-of select="MaMH"/></td>
                                <td><xsl:value-of select="tenMH"/></td>
                                <td><xsl:value-of select="soGio"/></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>