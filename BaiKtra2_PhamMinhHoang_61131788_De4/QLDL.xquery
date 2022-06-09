<QLDL>
    <Cau_a>
            {
                let $thongKe := for $ctPhieu in doc("QLDL1.xml")//CTPhieuDangKy,
                    $dangKyTour in doc("QLDL1.xml")//DangKyTour,
                    $toChucTour in doc("QLDL1.xml")//ToChucTour
                let $tenKH := $ctPhieu/HoTenKH
                where $ctPhieu/MaPhieuDK = $dangKyTour/MaPhieuDK
                where $dangKyTour/MaChuyenDi = $toChucTour/MaChuyenDi
                where substring($toChucTour/NgayKH, 1, 4)  = '2019'
                group by $tenKH
                return
                    <result>
                        <TenKH>{$tenKH}</TenKH>
                        <SoLan>{count($ctPhieu) }</SoLan>
                    </result>
                    let $maxSoLan := max($thongKe/SoLan)
                
                for $tk in $thongKe
                where $tk/SoLan = $maxSoLan
                return $tk
            }
    </Cau_a>
    <Cau_b>
        {
            for $i in doc("QLDL1.xml")//DSTour
            where $i/Gia < 2000000
            return 
            $i
        }
    </Cau_b>
    <Cau_c>
        {
            for $i in doc("QLDL1.xml")//DangKyTour
            where $i/TinhTrang = 'tốt'
            return 
            $i
        }
    </Cau_c>
</QLDL>