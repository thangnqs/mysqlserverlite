SELECT
    spt.IDPhuongTien as ' Mã phương tiện',
    spt.TenPhuongTien as 'Tên phương tiện',
    spt.SerialNumber as 'Serial Number',
    spt.DacTrungKT as 'Đặc trưng kỹ thuật',
    spt.NgayMua as 'Ngày mua',
    ncc.TenNhaCungCap as 'Nhà cung cấp',
    kh.TenKhachHang as 'Người bảo quản',
    dv.MoTaDonVi as 'Tên đơn vị',
    spt.BaoHanh as 'Bảo hành',
    spt.TinhTrang as 'Tình trạng',
    spt.PhanMem as 'Phần mềm cài đặt',
    spt.GhiChu as 'Ghi chú'
FROM
    sophuongtien spt
    INNER JOIN nhacungcap ncc ON spt.IDNhaCungCap = ncc.IDNhaCungCap
    INNER JOIN nguoibaoquan nbq ON spt.IDPhuongTien = nbq.IDPhuongTien
    INNER JOIN khachhang kh ON nbq.IDKhachHang = kh.IDKhachHang
    INNER JOIN donvi dv ON dv.IDDonVi = nbq.IDDonVi
WHERE
    spt.IDPhuongTien = nbq.IDPhuongTien
    -- AND spt.IDPhuongTien like 'LT-275'
ORDER BY
    spt.IDPhuongTien
LIMIT
    10