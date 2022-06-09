<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
           <HTML>
               <h2>Danh Sách Lớp Học</h2>
               <table border="1">
                   <tr>
                       <th>Mã Lớp</th>
                       <th>Tên Lớp</th>
                   </tr>
                   <xsl:for-each select="QuanLyLop/LopHoc">
                       <tr>
                           <td><xsl:value-of select="MaLop"/></td>
                           <td><xsl:value-of select="TenLop"/></td>
                       </tr>
                       
                   </xsl:for-each>
               </table>
           </HTML>
    </xsl:template>
</xsl:stylesheet>