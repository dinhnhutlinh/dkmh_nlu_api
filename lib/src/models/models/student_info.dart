// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'student_info.g.dart';

@JsonSerializable()
class StudentInfo extends Equatable {
  @JsonKey(name: 'thoi_gian_get_data')
  final String? thoiGianGetData;
  @JsonKey(name: 'ma_sv')
  final String? maSv;
  @JsonKey(name: 'ten_day_du')
  final String? tenDayDu;
  @JsonKey(name: 'gioi_tinh')
  final String? gioiTinh;
  @JsonKey(name: 'ngay_sinh')
  final String? ngaySinh;
  @JsonKey(name: 'dan_toc')
  final String? danToc;
  @JsonKey(name: 'ton_giao')
  final String? tonGiao;
  @JsonKey(name: 'dien_thoai')
  final String? dienThoai;
  final String? email;
  @JsonKey(name: 'dien_thoai2')
  final String? dienThoai2;
  final String? email2;
  @JsonKey(name: 'doi_mat_khau')
  final bool? doiMatKhau;
  @JsonKey(name: 'so_cmnd')
  final String? soCmnd;
  final String? lop;
  @JsonKey(name: 'khu_vuc')
  final String? khuVuc;
  @JsonKey(name: 'doi_tuong_uu_tien')
  final String? doiTuongUuTien;
  final String? khoi;
  final String? nganh;
  @JsonKey(name: 'chuyen_nganh')
  final String? chuyenNganh;
  @JsonKey(name: 'id_chuyen_nganh')
  final String? idChuyenNganh;
  final String? khoa;
  @JsonKey(name: 'bac_he_dao_tao')
  final String? bacHeDaoTao;
  @JsonKey(name: 'nien_khoa')
  final String? nienKhoa;
  @JsonKey(name: 'ma_cvht')
  final String? maCvht;
  @JsonKey(name: 'ho_ten_cvht')
  final String? hoTenCvht;
  @JsonKey(name: 'email_cvht')
  final String? emailCvht;
  @JsonKey(name: 'dien_thoai_cvht')
  final String? dienThoaiCvht;
  @JsonKey(name: 'ma_cvht_ng2')
  final String? maCvhtNg2;
  @JsonKey(name: 'ho_ten_cvht_ng2')
  final String? hoTenCvhtNg2;
  @JsonKey(name: 'email_cvht_ng2')
  final String? emailCvhtNg2;
  @JsonKey(name: 'dien_thoai_cvht_ng2')
  final String? dienThoaiCvhtNg2;
  @JsonKey(name: 'ma_truong')
  final String? maTruong;
  @JsonKey(name: 'ten_truong')
  final String? tenTruong;
  @JsonKey(name: 'id_dia_phuong')
  final String? idDiaPhuong;
  @JsonKey(name: 'id_khoa')
  final String? idKhoa;
  @JsonKey(name: 'id_sinh_vien')
  final String? idSinhVien;
  @JsonKey(name: 'id_lop')
  final String? idLop;
  @JsonKey(name: 'id_khoi')
  final String? idKhoi;
  @JsonKey(name: 'id_bac_he_nganh')
  final String? idBacHeNganh;
  @JsonKey(name: 'id_bac_he')
  final String? idBacHe;
  @JsonKey(name: 'id_he')
  final String? idHe;
  @JsonKey(name: 'id_quy_che')
  final String? idQuyChe;
  @JsonKey(name: 'id_quy_che_P')
  final String? idQuyCheP;
  @JsonKey(name: 'id_hoc_che')
  final String? idHocChe;
  @JsonKey(name: 'id_don_vi_phan_cap')
  final String? idDonViPhanCap;
  @JsonKey(name: 'id_co_so_lop')
  final String? idCoSoLop;
  @JsonKey(name: 'nhhk_vao')
  final int? nhhkVao;
  @JsonKey(name: 'nhhk_ra')
  final int? nhhkRa;
  @JsonKey(name: 'id_lop2')
  final String? idLop2;
  @JsonKey(name: 'id_khoi2')
  final String? idKhoi2;
  @JsonKey(name: 'id_bac_he_nganh2')
  final String? idBacHeNganh2;
  @JsonKey(name: 'is_master_pass')
  final bool? isMasterPass;
  @JsonKey(name: 'is_cvht_dang_nhap')
  final bool? isCvhtDangNhap;
  @JsonKey(name: 'is_phu_huynh_dang_nhap')
  final bool? isPhuHuynhDangNhap;
  @JsonKey(name: 'int_hien_dien_sv')
  final int? intHienDienSv;
  @JsonKey(name: 'hien_dien_sv')
  final String? hienDienSv;
  @JsonKey(name: 'int_hien_dien_dkmh')
  final int? intHienDienDkmh;
  @JsonKey(name: 'ds_menu_cam_xem')
  final List<dynamic>? dsMenuCamXem;
  @JsonKey(name: 'str_hoan_thanh_dgrl')
  final String? strHoanThanhDgrl;
  @JsonKey(name: 'url_netweb')
  final String? urlNetweb;

  const StudentInfo({
    this.thoiGianGetData,
    this.maSv,
    this.tenDayDu,
    this.gioiTinh,
    this.ngaySinh,
    this.danToc,
    this.tonGiao,
    this.dienThoai,
    this.email,
    this.dienThoai2,
    this.email2,
    this.doiMatKhau,
    this.soCmnd,
    this.lop,
    this.khuVuc,
    this.doiTuongUuTien,
    this.khoi,
    this.nganh,
    this.chuyenNganh,
    this.idChuyenNganh,
    this.khoa,
    this.bacHeDaoTao,
    this.nienKhoa,
    this.maCvht,
    this.hoTenCvht,
    this.emailCvht,
    this.dienThoaiCvht,
    this.maCvhtNg2,
    this.hoTenCvhtNg2,
    this.emailCvhtNg2,
    this.dienThoaiCvhtNg2,
    this.maTruong,
    this.tenTruong,
    this.idDiaPhuong,
    this.idKhoa,
    this.idSinhVien,
    this.idLop,
    this.idKhoi,
    this.idBacHeNganh,
    this.idBacHe,
    this.idHe,
    this.idQuyChe,
    this.idQuyCheP,
    this.idHocChe,
    this.idDonViPhanCap,
    this.idCoSoLop,
    this.nhhkVao,
    this.nhhkRa,
    this.idLop2,
    this.idKhoi2,
    this.idBacHeNganh2,
    this.isMasterPass,
    this.isCvhtDangNhap,
    this.isPhuHuynhDangNhap,
    this.intHienDienSv,
    this.hienDienSv,
    this.intHienDienDkmh,
    this.dsMenuCamXem,
    this.strHoanThanhDgrl,
    this.urlNetweb,
  });

  factory StudentInfo.fromJson(Map<String, dynamic> json) {
    return _$StudentInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StudentInfoToJson(this);

  StudentInfo copyWith({
    String? thoiGianGetData,
    String? maSv,
    String? tenDayDu,
    String? gioiTinh,
    String? ngaySinh,
    String? danToc,
    String? tonGiao,
    String? dienThoai,
    String? email,
    String? dienThoai2,
    String? email2,
    bool? doiMatKhau,
    String? soCmnd,
    String? lop,
    String? khuVuc,
    String? doiTuongUuTien,
    String? khoi,
    String? nganh,
    String? chuyenNganh,
    String? idChuyenNganh,
    String? khoa,
    String? bacHeDaoTao,
    String? nienKhoa,
    String? maCvht,
    String? hoTenCvht,
    String? emailCvht,
    String? dienThoaiCvht,
    String? maCvhtNg2,
    String? hoTenCvhtNg2,
    String? emailCvhtNg2,
    String? dienThoaiCvhtNg2,
    String? maTruong,
    String? tenTruong,
    String? idDiaPhuong,
    String? idKhoa,
    String? idSinhVien,
    String? idLop,
    String? idKhoi,
    String? idBacHeNganh,
    String? idBacHe,
    String? idHe,
    String? idQuyChe,
    String? idQuyCheP,
    String? idHocChe,
    String? idDonViPhanCap,
    String? idCoSoLop,
    int? nhhkVao,
    int? nhhkRa,
    String? idLop2,
    String? idKhoi2,
    String? idBacHeNganh2,
    bool? isMasterPass,
    bool? isCvhtDangNhap,
    bool? isPhuHuynhDangNhap,
    int? intHienDienSv,
    String? hienDienSv,
    int? intHienDienDkmh,
    List<dynamic>? dsMenuCamXem,
    String? strHoanThanhDgrl,
    String? urlNetweb,
  }) {
    return StudentInfo(
      thoiGianGetData: thoiGianGetData ?? this.thoiGianGetData,
      maSv: maSv ?? this.maSv,
      tenDayDu: tenDayDu ?? this.tenDayDu,
      gioiTinh: gioiTinh ?? this.gioiTinh,
      ngaySinh: ngaySinh ?? this.ngaySinh,
      danToc: danToc ?? this.danToc,
      tonGiao: tonGiao ?? this.tonGiao,
      dienThoai: dienThoai ?? this.dienThoai,
      email: email ?? this.email,
      dienThoai2: dienThoai2 ?? this.dienThoai2,
      email2: email2 ?? this.email2,
      doiMatKhau: doiMatKhau ?? this.doiMatKhau,
      soCmnd: soCmnd ?? this.soCmnd,
      lop: lop ?? this.lop,
      khuVuc: khuVuc ?? this.khuVuc,
      doiTuongUuTien: doiTuongUuTien ?? this.doiTuongUuTien,
      khoi: khoi ?? this.khoi,
      nganh: nganh ?? this.nganh,
      chuyenNganh: chuyenNganh ?? this.chuyenNganh,
      idChuyenNganh: idChuyenNganh ?? this.idChuyenNganh,
      khoa: khoa ?? this.khoa,
      bacHeDaoTao: bacHeDaoTao ?? this.bacHeDaoTao,
      nienKhoa: nienKhoa ?? this.nienKhoa,
      maCvht: maCvht ?? this.maCvht,
      hoTenCvht: hoTenCvht ?? this.hoTenCvht,
      emailCvht: emailCvht ?? this.emailCvht,
      dienThoaiCvht: dienThoaiCvht ?? this.dienThoaiCvht,
      maCvhtNg2: maCvhtNg2 ?? this.maCvhtNg2,
      hoTenCvhtNg2: hoTenCvhtNg2 ?? this.hoTenCvhtNg2,
      emailCvhtNg2: emailCvhtNg2 ?? this.emailCvhtNg2,
      dienThoaiCvhtNg2: dienThoaiCvhtNg2 ?? this.dienThoaiCvhtNg2,
      maTruong: maTruong ?? this.maTruong,
      tenTruong: tenTruong ?? this.tenTruong,
      idDiaPhuong: idDiaPhuong ?? this.idDiaPhuong,
      idKhoa: idKhoa ?? this.idKhoa,
      idSinhVien: idSinhVien ?? this.idSinhVien,
      idLop: idLop ?? this.idLop,
      idKhoi: idKhoi ?? this.idKhoi,
      idBacHeNganh: idBacHeNganh ?? this.idBacHeNganh,
      idBacHe: idBacHe ?? this.idBacHe,
      idHe: idHe ?? this.idHe,
      idQuyChe: idQuyChe ?? this.idQuyChe,
      idQuyCheP: idQuyCheP ?? this.idQuyCheP,
      idHocChe: idHocChe ?? this.idHocChe,
      idDonViPhanCap: idDonViPhanCap ?? this.idDonViPhanCap,
      idCoSoLop: idCoSoLop ?? this.idCoSoLop,
      nhhkVao: nhhkVao ?? this.nhhkVao,
      nhhkRa: nhhkRa ?? this.nhhkRa,
      idLop2: idLop2 ?? this.idLop2,
      idKhoi2: idKhoi2 ?? this.idKhoi2,
      idBacHeNganh2: idBacHeNganh2 ?? this.idBacHeNganh2,
      isMasterPass: isMasterPass ?? this.isMasterPass,
      isCvhtDangNhap: isCvhtDangNhap ?? this.isCvhtDangNhap,
      isPhuHuynhDangNhap: isPhuHuynhDangNhap ?? this.isPhuHuynhDangNhap,
      intHienDienSv: intHienDienSv ?? this.intHienDienSv,
      hienDienSv: hienDienSv ?? this.hienDienSv,
      intHienDienDkmh: intHienDienDkmh ?? this.intHienDienDkmh,
      dsMenuCamXem: dsMenuCamXem ?? this.dsMenuCamXem,
      strHoanThanhDgrl: strHoanThanhDgrl ?? this.strHoanThanhDgrl,
      urlNetweb: urlNetweb ?? this.urlNetweb,
    );
  }

  @override
  List<Object?> get props {
    return [
      thoiGianGetData,
      maSv,
      tenDayDu,
      gioiTinh,
      ngaySinh,
      danToc,
      tonGiao,
      dienThoai,
      email,
      dienThoai2,
      email2,
      doiMatKhau,
      soCmnd,
      lop,
      khuVuc,
      doiTuongUuTien,
      khoi,
      nganh,
      chuyenNganh,
      idChuyenNganh,
      khoa,
      bacHeDaoTao,
      nienKhoa,
      maCvht,
      hoTenCvht,
      emailCvht,
      dienThoaiCvht,
      maCvhtNg2,
      hoTenCvhtNg2,
      emailCvhtNg2,
      dienThoaiCvhtNg2,
      maTruong,
      tenTruong,
      idDiaPhuong,
      idKhoa,
      idSinhVien,
      idLop,
      idKhoi,
      idBacHeNganh,
      idBacHe,
      idHe,
      idQuyChe,
      idQuyCheP,
      idHocChe,
      idDonViPhanCap,
      idCoSoLop,
      nhhkVao,
      nhhkRa,
      idLop2,
      idKhoi2,
      idBacHeNganh2,
      isMasterPass,
      isCvhtDangNhap,
      isPhuHuynhDangNhap,
      intHienDienSv,
      hienDienSv,
      intHienDienDkmh,
      dsMenuCamXem,
      strHoanThanhDgrl,
      urlNetweb,
    ];
  }

  @override
  bool get stringify => true;
}
