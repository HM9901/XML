<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
    <HTML>
        <head>
            <title>Mộc Phúc</title>
        </head>
        <body>
            <h2>Danh sách sản phẩm</h2>
            <table border="1">
                <tr>
                    <td>STT</td>
                    <td>Tên Sản Phẩm</td>
                    <td>Số lượng tồn</td>
                    <td>Image</td>
                    <td>Giá bán</td>
                    <td>Loại Sản Phẩm</td>
                </tr>
                <xsl:for-each select="MocPhuc/SanPham">
                    <tr>
                        <td> <xsl:value-of select="position()"/> </td>
                        <td><xsl:value-of select="TenSP"/></td>
                        <td><xsl:value-of select="SoLuongTon"/></td>
                        <td><xsl:value-of select="Image"/></td>
                        <td><xsl:value-of select="GiaBan"/></td>
                        <td><xsl:value-of select="MaLSP"/></td>
                    </tr>
                </xsl:for-each>
            </table>
                <!-- /////////////////////////////////////////////////////////////////////////////////// -->
            <h2>Danh sách khách hàng</h2>
            <table border="1">
                <tr>
                    <td>STT</td>
                    <td>Mã Khách Hàng</td>
                    <td>Họ Khách Hàng</td>
                    <td>Tên Khách Hàng</td>
                    <td>Avatar</td>
                    <td>Địa Chỉ</td>
                </tr>
                <xsl:for-each select="MocPhuc/KhachHang">
                    <tr>
                        <td> <xsl:value-of select="position()"/> </td>
                        <td><xsl:value-of select="MaKH"/></td>
                        <td><xsl:value-of select="HoKH"/></td>
                        <td><xsl:value-of select="TenKH"/></td>
                        <td><xsl:value-of select="Avatar"/></td>
                        <td><xsl:value-of select="DiaChi"/></td>
                    </tr>
                </xsl:for-each>
            </table>    
            <!-- /////////////////////////////////////////////////////////////////////////////////// -->
            <h2>Danh sách nhân viên</h2>
            <table border="1">
                <tr>
                    <td>STT</td>
                    <td>Mã Nhân Viên</td>
                    <td>Họ Nhân Viên</td>
                    <td>Tên Nhân Viên</td>
                    <td>Ngày Sinh</td>
                    <td>Giới Tính</td>
                    <td>Địa Chỉ</td>
                    <td>Số Điện Thoại</td>
                </tr>
                <xsl:for-each select="MocPhuc/NhanVien">
                    <tr>
                        <td> <xsl:value-of select="position()"/> </td>
                        <td><xsl:value-of select="MaNV"/></td>
                        <td><xsl:value-of select="HoNV"/></td>
                        <td><xsl:value-of select="TenNV"/></td>
                        <td><xsl:value-of select="NgaySinh"/></td>
                        <td><xsl:value-of select="GioiTinh"/></td>
                        <td><xsl:value-of select="DiaChi"/></td>
                        <td><xsl:value-of select="SDT"/></td>
                    </tr>
                </xsl:for-each>
            </table>
            <!-- /////////////////////////////////////////////////////////////////////////////////// -->
            <h2>Danh sách hóa đơn</h2>
            <table border="1">
                <tr>
                    <td>STT</td>
                    <td>Mã Hóa Đơn</td>
                    <td>Mã Khách Hàng</td>
                    <td>Ngày Đặt</td>
                    <td>Ngày Giao</td>
                    <td>Nơi Giao</td>
                    <td>Mã Nhân Viên Duyệt</td>
                    <td>Mã Phương Thức</td>
                </tr>
                <xsl:for-each select="MocPhuc/HoaDon">
                    <xsl:sort select="NgayDat" order="descending"></xsl:sort>
                    <tr>
                        <td> <xsl:value-of select="position()"/> </td>
                        <td><xsl:value-of select="MaHD"/></td>
                        <td><xsl:value-of select="MaKH"/></td>
                        <td><xsl:value-of select="NgayDat"/></td>
                        <td><xsl:value-of select="NgayGiao"/></td>
                        <td><xsl:value-of select="NoiGiao"/></td>
                        <td><xsl:value-of select="MaNVDuyet"/></td>
                        <td><xsl:value-of select="MaPT"/></td>
                    </tr>
                </xsl:for-each>
            </table>
            <!-- /////////////////////////////////////////////////////////////////////////////////// -->
            <h2>Chi Tiết Hóa Đơn của khách hàng "Hoàng Minh Quân"</h2>
            <xsl:for-each select="MocPhuc">
                <table>
                    <tr>
                        <td>Mã Khách Hàng</td>
                        <td><xsl:value-of select="KhachHang[MaKH='KH002']/MaKH"/></td>
                        
                    </tr>
                    <tr>
                        <td>Tên Khách Hàng</td>
                        <td>
                            <xsl:value-of select="KhachHang[MaKH='KH002']/HoKH"/>
                            <xsl:value-of select="KhachHang[MaKH='KH002']/TenKH"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Ngày Đặt Hàng</td>
                        <td><xsl:value-of select="HoaDon[MaKH='KH002']/NgayDat"/></td>
                    </tr>
                </table>
                <br/>
                <table border="1">
                    <tr>
                        <td>STT</td>
                        <td>Mã Hóa Đơn</td>
                        <td>Tên Sản Phẩm</td>
                        <td>Số Lượng</td>
                        <td>Đơn Giá</td>
                    </tr>
                    <tr>
                        <td> <xsl:value-of select="position()"/> </td>
                        <td><xsl:value-of select="HoaDon[MaKH='KH002']/MaHD"/></td>
                        <td><xsl:value-of select="SanPham[MaSP='SP013']/TenSP"/></td>
                        <td><xsl:value-of select="CTHD[MaHD='HD002']/SoLuong"/></td>
                        <td><xsl:value-of select="CTHD[MaHD='HD002']/DonGia"/></td>
                    </tr>
                    <tr>
                        <td>Thành Tiền</td>
                        <td>
                            <xsl:value-of select="sum(CTHD[MaHD='HD002']/SoLuong * CTHD[MaHD='HD002']/DonGia)"/>
                        </td>
                    </tr>
                </table>
            </xsl:for-each>
            
        </body>
    </HTML>
    </xsl:template>
</xsl:stylesheet>