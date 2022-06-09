<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Điểm Thi Học Kỳ</title>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <td>Masv</td>
                        <td>Mamh</td>
                        <td>DiemThi</td>
                    </tr>
                    <xsl:for-each select="QLD/Diem">
                        <xsl:if test="DiemThi>=5">
                            <tr>
                                <td><xsl:value-of select="Masv"/></td>
                                <td><xsl:value-of select="MaMH"/></td>
                                <td><xsl:value-of select="DiemThi"/></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>