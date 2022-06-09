<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <HTML><head><title>Thông Tin Sinh Viên</title></head>
            <body>
                <h2>Danh Sách Sinh Viên</h2>
                <table border="1">
                    <tr>
                        <td>STT</td>
                        <td>MaSV</td>
                        <td>TenSV</td>
                        <td>GioiTinh</td>
                        <td>NgaySinh</td>
                        <td>MaLop</td>
                    </tr>
                    <xsl:for-each select="QLSV/SinhVien">
                        <xsl:sort select="tenSV"></xsl:sort>
                        <tr>
                            <td> <xsl:value-of select="position()"/> </td>
                            <td><xsl:value-of select="MaSV"/></td>
                            <td><xsl:value-of select="tenSV"/></td>
                            <td><xsl:value-of select="GioiTinh"/></td>
                            <td><xsl:value-of select="NgaySinh"/></td>
                            <td><xsl:value-of select="MaLop"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </HTML>
    </xsl:template>
</xsl:stylesheet>