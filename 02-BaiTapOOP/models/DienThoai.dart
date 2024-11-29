class DienThoai {
  String _maDienThoai;
  String _tenDienThoai;
  String _hangSanXuat;
  double _giaNhap;
  double _giaBan;
  int _slTonKho;
  bool _trangThai;

  DienThoai(this._maDienThoai, this._tenDienThoai, this._hangSanXuat, this._giaNhap, this._giaBan, this._slTonKho, this._trangThai);

  //GET
  String get maDienThoai=>_maDienThoai;
  String get tenDienThoai =>_tenDienThoai;
  String get hangSanXuat =>_hangSanXuat;
  double get giaNhap =>_giaNhap;
  double get giaBan => _giaBan;
  int get slTonKho =>_slTonKho;
  bool get trangThai =>_trangThai;

  //SET

  set maDienThoai(String maDienThoai){
    _maDienThoai =(maDienThoai.isNotEmpty && maDienThoai.startsWith("DT-")) ? maDienThoai: _maDienThoai;
  } 

  set tenDienThoai(String tenDienThoai){
    _tenDienThoai = (tenDienThoai.isNotEmpty)? tenDienThoai :_tenDienThoai;
  }

  set hangSanXuat(String hangSanXuat){
    _hangSanXuat = (hangSanXuat.isNotEmpty) ? hangSanXuat : _hangSanXuat;
  }
  set giaNhap(double giaNhap){
    _giaNhap = (giaNhap > 0) ? giaNhap :_giaNhap;
  }

  set giaBan(double giaBan){
    _giaBan = (giaBan > 0 && giaBan > giaNhap) ? giaBan : _giaBan;
  }

  set slTonKho(int slTonKho){
    _slTonKho = (slTonKho >= 0) ? slTonKho : _slTonKho;
  }

  set trangThai(bool trangThai) {
    _trangThai = trangThai;
  }

  double tinhLoiNhuan(){
    return _giaNhap - _giaBan ;
  }

  bool TrangThaiCoTheBan() {
  return _trangThai == true && _slTonKho > 0;
}

  void hienThongTin(){
    print("Thong tin dien thoai: ");
    print("Ma: $_maDienThoai");
    print("Ten: $_tenDienThoai");
    print("Hang san xuat: $_hangSanXuat");
    print("Gia nhap: $_giaNhap");
    print("Gia  Ban:$_giaBan ");
    print("So luong ton $_slTonKho");
    print('Trạng thái: ${_trangThai ? "Đang kinh doanh" : "Ngừng kinh doanh"}');

  }





}