import 'DienThoai.dart';
import 'HoaDon.dart';

class CuaHang {

  String _tenCuaHang;
  String _diaChi;
  List<DienThoai> _danhSachDienThoai = [];
  List<HoaDon> _danhSachHoaDon = [];

  // Constructor
  CuaHang(this._tenCuaHang, this._diaChi);

  // Getter
  String get tenCuaHang => _tenCuaHang;
  String get diaChi => _diaChi;
  List<DienThoai> get danhSachDienThoai => _danhSachDienThoai;
  List<HoaDon> get danhSachHoaDon => _danhSachHoaDon;

  // Setter
  set tenCuaHang(String tenCuaHang) {
    if (tenCuaHang.isNotEmpty) {
      _tenCuaHang = tenCuaHang;
    }
  }

  set diaChi(String diaChi) {
    if (diaChi.isNotEmpty) {
      _diaChi = diaChi;
    }
  }


  void themDienThoai(DienThoai dienThoai) {
    _danhSachDienThoai.add(dienThoai);
    print("Thêm điện thoại thành công: ${dienThoai.tenDienThoai}");
  }

  void capNhatDienThoai(String maDienThoai, DienThoai dienThoaiMoi) {
  for (var dt in _danhSachDienThoai) {
    if (dt.maDienThoai == maDienThoai) {
      dt.tenDienThoai = dienThoaiMoi.tenDienThoai;
      dt.hangSanXuat = dienThoaiMoi.hangSanXuat;
      dt.giaNhap = dienThoaiMoi.giaNhap;
      dt.giaBan = dienThoaiMoi.giaBan;
      dt.slTonKho = dienThoaiMoi.slTonKho;
      print('Đã cập nhật thông tin điện thoại: ${dt.tenDienThoai}');
      return;
    }
  }
    print("Không tìm thấy điện thoại cần cập nhật.");

  }

  void ngungKinhDoanhDienThoai(String maDienThoai) {
    for (var dt in _danhSachDienThoai) {
      if (dt.maDienThoai == maDienThoai) {
        dt.trangThai = false;
        print("Ngừng kinh doanh điện thoại: ${dt.tenDienThoai}");
        return;
      }
    }
    print("Không tìm thấy điện thoại cần ngừng kinh doanh.");
  }

  void hienThiDanhSachDienThoai() {
    print('Danh sách điện thoại:');
    for (var dt in _danhSachDienThoai) {
      dt.hienThongTin();
    }
  }

  void taoHoaDon(HoaDon hoaDon) {
    if (hoaDon.soLuongMua <= hoaDon.dienThoaiDuocBan.slTonKho) {
      hoaDon.dienThoaiDuocBan.slTonKho -= hoaDon.soLuongMua;
      _danhSachHoaDon.add(hoaDon);
      print('Đã tạo hóa đơn: ${hoaDon.maHoaDon}');
    } else {
      print('Số lượng mua vượt quá tồn kho!');
    }
  }

  void timKiemHoaDon(String keyword) {
    var ketQua = _danhSachHoaDon.where((hd) =>
        hd.maHoaDon.contains(keyword) ||
        hd.tenKhachHang.contains(keyword) ||
        hd.soDienThoaiKhach.contains(keyword));
    if (ketQua.isEmpty) {
      print("Không tìm thấy hóa đơn.");
    } else {
      print("Kết quả tìm kiếm hóa đơn:");
      for (var hd in ketQua) {
        hd.hienThongTin();
      }
    }
  }

  void hienThiDanhSachHoaDon() {
    print('Danh sách hóa đơn:');
    for (var hd in _danhSachHoaDon) {
      hd.hienThongTin();
    }
  }


  double tinhTongDoanhThu(DateTime tuNgay, DateTime denNgay) {
    double tongDoanhThu = 0;
    for (var hd in _danhSachHoaDon) {
      if (hd.ngayBan.isAfter(tuNgay) && hd.ngayBan.isBefore(denNgay)) {
        tongDoanhThu += hd.tinhTongTien();
      }
    }
    return tongDoanhThu;
  }

  double tinhTongLoiNhuan(DateTime tuNgay, DateTime denNgay) {
    double tongLoiNhuan = 0;
    for (var hd in _danhSachHoaDon) {
      if (hd.ngayBan.isAfter(tuNgay) && hd.ngayBan.isBefore(denNgay)) {
        tongLoiNhuan += hd.tinhLoiNhuanThucTe();
      }
    }
    return tongLoiNhuan;
  }

  void thongKeTonKho() {
    print("Thống kê tồn kho:");
    for (var dt in _danhSachDienThoai) {
      print(
          "Tên: ${dt.tenDienThoai}, Mã: ${dt.maDienThoai}, Số lượng tồn: ${dt.slTonKho}");
    }
  }
  

  




}