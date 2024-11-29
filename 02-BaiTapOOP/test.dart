import '../02-BaiTapOOP/models/CuaHang.dart';
import '../02-BaiTapOOP/models/DienThoai.dart';
import '../02-BaiTapOOP/models/HoaDon.dart';

void main(){
  CuaHang cuaHang = CuaHang("Cửa Hàng DienThoaiA", "1 Đường A");

  DienThoai dt1 = DienThoai('DT-001', 'iPhone 15', 'Apple', 1000.0, 1200.0, 50, true);
  DienThoai dt2 = DienThoai('DT-002', 'Galaxy S23', 'Samsung', 900.0, 1100.0, 30, true);
  DienThoai dt3 = DienThoai('DT-003', 'iPhone X', 'Apple', 750.0, 1000.0, 80, true);
  DienThoai dt4 = DienThoai('DT-004', 'oppo reno8', 'Oppo', 500.0, 520.0, 10, false);
  DienThoai dt5 = DienThoai('DT-005', 'google pixel 9', 'Google', 800.0, 820.0, 5, true);

  cuaHang.themDienThoai(dt1);
  cuaHang.themDienThoai(dt2);
  cuaHang.themDienThoai(dt3);
  cuaHang.themDienThoai(dt4);
  cuaHang.themDienThoai(dt5);


  cuaHang.hienThiDanhSachDienThoai();

  //Ngung kinh doanh
  cuaHang.ngungKinhDoanhDienThoai("DT-005");
  cuaHang.hienThiDanhSachDienThoai();

  HoaDon hoaDon1 = HoaDon('HD-001', DateTime.now(), dt1, 1, 1190.0, 'Nguyễn Văn A', '0123456789');
  cuaHang.taoHoaDon(hoaDon1);

  cuaHang.hienThiDanhSachHoaDon();

  //Tìm kiếm hóa đơn
  print("-------------------------------------");
  cuaHang.timKiemHoaDon("HD-001");

  //Tính toán doanh thu
  print("-------------------------------------");
  double doanhThu = cuaHang.tinhTongDoanhThu(
    DateTime(2024, 1, 1),
    DateTime.now(),
  );
  print("Tổng doanh thu: $doanhThu");

  //Thống kê tồn kho
  print("-------------------------------------");
  cuaHang.thongKeTonKho();



}