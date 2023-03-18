import 'dart:convert';

import 'package:equatable/equatable.dart';

class Data extends Equatable {
  final String? thoiGianGetData;
  final String? maSv;
  final String? tenDayDu;
  final String? gioiTinh;
  final String? ngaySinh;
  final String? danToc;
  final String? tonGiao;
  final String? dienThoai;
  final String? email;
  final String? dienThoai2;
  final String? email2;
  final bool? doiMatKhau;
  final String? soCmnd;
  final String? lop;
  final String? khuVuc;
  final String? doiTuongUuTien;
  final String? khoi;
  final String? nganh;
  final String? chuyenNganh;
  final String? idChuyenNganh;
  final String? khoa;
  final String? bacHeDaoTao;
  final String? nienKhoa;
  final String? maCvht;
  final String? hoTenCvht;
  final String? emailCvht;
  final String? dienThoaiCvht;
  final String? maCvhtNg2;
  final String? hoTenCvhtNg2;
  final String? emailCvhtNg2;
  final String? dienThoaiCvhtNg2;
  final String? maTruong;
  final String? tenTruong;
  final String? idDiaPhuong;
  final String? idKhoa;
  final String? idSinhVien;
  final String? idLop;
  final String? idKhoi;
  final String? idBacHeNganh;
  final String? idBacHe;
  final String? idHe;
  final String? idQuyChe;
  final String? idQuyCheP;
  final String? idHocChe;
  final String? idDonViPhanCap;
  final String? idCoSoLop;
  final int? nhhkVao;
  final int? nhhkRa;
  final String? idLop2;
  final String? idKhoi2;
  final String? idBacHeNganh2;
  final bool? isMasterPass;
  final bool? isCvhtDangNhap;
  final bool? isPhuHuynhDangNhap;
  final int? intHienDienSv;
  final String? hienDienSv;
  final int? intHienDienDkmh;
  final List<dynamic>? dsMenuCamXem;
  final String? strHoanThanhDgrl;
  final String? urlNetweb;

  const Data({
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

  factory Data.fromMap(Map<String, dynamic> data) => Data(
        thoiGianGetData: data['thoi_gian_get_data'] as String?,
        maSv: data['ma_sv'] as String?,
        tenDayDu: data['ten_day_du'] as String?,
        gioiTinh: data['gioi_tinh'] as String?,
        ngaySinh: data['ngay_sinh'] as String?,
        danToc: data['dan_toc'] as String?,
        tonGiao: data['ton_giao'] as String?,
        dienThoai: data['dien_thoai'] as String?,
        email: data['email'] as String?,
        dienThoai2: data['dien_thoai2'] as String?,
        email2: data['email2'] as String?,
        doiMatKhau: data['doi_mat_khau'] as bool?,
        soCmnd: data['so_cmnd'] as String?,
        lop: data['lop'] as String?,
        khuVuc: data['khu_vuc'] as String?,
        doiTuongUuTien: data['doi_tuong_uu_tien'] as String?,
        khoi: data['khoi'] as String?,
        nganh: data['nganh'] as String?,
        chuyenNganh: data['chuyen_nganh'] as String?,
        idChuyenNganh: data['id_chuyen_nganh'] as String?,
        khoa: data['khoa'] as String?,
        bacHeDaoTao: data['bac_he_dao_tao'] as String?,
        nienKhoa: data['nien_khoa'] as String?,
        maCvht: data['ma_cvht'] as String?,
        hoTenCvht: data['ho_ten_cvht'] as String?,
        emailCvht: data['email_cvht'] as String?,
        dienThoaiCvht: data['dien_thoai_cvht'] as String?,
        maCvhtNg2: data['ma_cvht_ng2'] as String?,
        hoTenCvhtNg2: data['ho_ten_cvht_ng2'] as String?,
        emailCvhtNg2: data['email_cvht_ng2'] as String?,
        dienThoaiCvhtNg2: data['dien_thoai_cvht_ng2'] as String?,
        maTruong: data['ma_truong'] as String?,
        tenTruong: data['ten_truong'] as String?,
        idDiaPhuong: data['id_dia_phuong'] as String?,
        idKhoa: data['id_khoa'] as String?,
        idSinhVien: data['id_sinh_vien'] as String?,
        idLop: data['id_lop'] as String?,
        idKhoi: data['id_khoi'] as String?,
        idBacHeNganh: data['id_bac_he_nganh'] as String?,
        idBacHe: data['id_bac_he'] as String?,
        idHe: data['id_he'] as String?,
        idQuyChe: data['id_quy_che'] as String?,
        idQuyCheP: data['id_quy_che_P'] as String?,
        idHocChe: data['id_hoc_che'] as String?,
        idDonViPhanCap: data['id_don_vi_phan_cap'] as String?,
        idCoSoLop: data['id_co_so_lop'] as String?,
        nhhkVao: data['nhhk_vao'] as int?,
        nhhkRa: data['nhhk_ra'] as int?,
        idLop2: data['id_lop2'] as String?,
        idKhoi2: data['id_khoi2'] as String?,
        idBacHeNganh2: data['id_bac_he_nganh2'] as String?,
        isMasterPass: data['is_master_pass'] as bool?,
        isCvhtDangNhap: data['is_cvht_dang_nhap'] as bool?,
        isPhuHuynhDangNhap: data['is_phu_huynh_dang_nhap'] as bool?,
        intHienDienSv: data['int_hien_dien_sv'] as int?,
        hienDienSv: data['hien_dien_sv'] as String?,
        intHienDienDkmh: data['int_hien_dien_dkmh'] as int?,
        dsMenuCamXem: data['ds_menu_cam_xem'] as List<dynamic>?,
        strHoanThanhDgrl: data['str_hoan_thanh_dgrl'] as String?,
        urlNetweb: data['url_netweb'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'thoi_gian_get_data': thoiGianGetData,
        'ma_sv': maSv,
        'ten_day_du': tenDayDu,
        'gioi_tinh': gioiTinh,
        'ngay_sinh': ngaySinh,
        'dan_toc': danToc,
        'ton_giao': tonGiao,
        'dien_thoai': dienThoai,
        'email': email,
        'dien_thoai2': dienThoai2,
        'email2': email2,
        'doi_mat_khau': doiMatKhau,
        'so_cmnd': soCmnd,
        'lop': lop,
        'khu_vuc': khuVuc,
        'doi_tuong_uu_tien': doiTuongUuTien,
        'khoi': khoi,
        'nganh': nganh,
        'chuyen_nganh': chuyenNganh,
        'id_chuyen_nganh': idChuyenNganh,
        'khoa': khoa,
        'bac_he_dao_tao': bacHeDaoTao,
        'nien_khoa': nienKhoa,
        'ma_cvht': maCvht,
        'ho_ten_cvht': hoTenCvht,
        'email_cvht': emailCvht,
        'dien_thoai_cvht': dienThoaiCvht,
        'ma_cvht_ng2': maCvhtNg2,
        'ho_ten_cvht_ng2': hoTenCvhtNg2,
        'email_cvht_ng2': emailCvhtNg2,
        'dien_thoai_cvht_ng2': dienThoaiCvhtNg2,
        'ma_truong': maTruong,
        'ten_truong': tenTruong,
        'id_dia_phuong': idDiaPhuong,
        'id_khoa': idKhoa,
        'id_sinh_vien': idSinhVien,
        'id_lop': idLop,
        'id_khoi': idKhoi,
        'id_bac_he_nganh': idBacHeNganh,
        'id_bac_he': idBacHe,
        'id_he': idHe,
        'id_quy_che': idQuyChe,
        'id_quy_che_P': idQuyCheP,
        'id_hoc_che': idHocChe,
        'id_don_vi_phan_cap': idDonViPhanCap,
        'id_co_so_lop': idCoSoLop,
        'nhhk_vao': nhhkVao,
        'nhhk_ra': nhhkRa,
        'id_lop2': idLop2,
        'id_khoi2': idKhoi2,
        'id_bac_he_nganh2': idBacHeNganh2,
        'is_master_pass': isMasterPass,
        'is_cvht_dang_nhap': isCvhtDangNhap,
        'is_phu_huynh_dang_nhap': isPhuHuynhDangNhap,
        'int_hien_dien_sv': intHienDienSv,
        'hien_dien_sv': hienDienSv,
        'int_hien_dien_dkmh': intHienDienDkmh,
        'ds_menu_cam_xem': dsMenuCamXem,
        'str_hoan_thanh_dgrl': strHoanThanhDgrl,
        'url_netweb': urlNetweb,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Data].
  factory Data.fromJson(String data) {
    return Data.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Data] to a JSON string.
  String toJson() => json.encode(toMap());

  Data copyWith({
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
    return Data(
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
}
