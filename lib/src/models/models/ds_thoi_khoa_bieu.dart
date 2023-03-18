import 'dart:convert';

import 'package:equatable/equatable.dart';

class DsThoiKhoaBieu extends Equatable {
  final int? isHkLienTruoc;
  final int? thuKieuSo;
  final int? tietBatDau;
  final int? soTiet;
  final String? maMon;
  final String? tenMon;
  final String? soTinChi;
  final String? idToHoc;
  final String? idTkb;
  final String? idToHop;
  final String? maNhom;
  final String? maToTh;
  final String? maToHop;
  final String? maGiangVien;
  final String? tenGiangVien;
  final String? maLop;
  final String? maPhong;
  final String? maCoSo;
  final String? ngayHoc;
  final String? idTuTao;
  final bool? isFileBaiGiang;
  final String? idSinhHoat;

  const DsThoiKhoaBieu({
    this.isHkLienTruoc,
    this.thuKieuSo,
    this.tietBatDau,
    this.soTiet,
    this.maMon,
    this.tenMon,
    this.soTinChi,
    this.idToHoc,
    this.idTkb,
    this.idToHop,
    this.maNhom,
    this.maToTh,
    this.maToHop,
    this.maGiangVien,
    this.tenGiangVien,
    this.maLop,
    this.maPhong,
    this.maCoSo,
    this.ngayHoc,
    this.idTuTao,
    this.isFileBaiGiang,
    this.idSinhHoat,
  });

  factory DsThoiKhoaBieu.fromMap(Map<String, dynamic> data) {
    return DsThoiKhoaBieu(
      isHkLienTruoc: data['is_hk_lien_truoc'] as int?,
      thuKieuSo: data['thu_kieu_so'] as int?,
      tietBatDau: data['tiet_bat_dau'] as int?,
      soTiet: data['so_tiet'] as int?,
      maMon: data['ma_mon'] as String?,
      tenMon: data['ten_mon'] as String?,
      soTinChi: data['so_tin_chi'] as String?,
      idToHoc: data['id_to_hoc'] as String?,
      idTkb: data['id_tkb'] as String?,
      idToHop: data['id_to_hop'] as String?,
      maNhom: data['ma_nhom'] as String?,
      maToTh: data['ma_to_th'] as String?,
      maToHop: data['ma_to_hop'] as String?,
      maGiangVien: data['ma_giang_vien'] as String?,
      tenGiangVien: data['ten_giang_vien'] as String?,
      maLop: data['ma_lop'] as String?,
      maPhong: data['ma_phong'] as String?,
      maCoSo: data['ma_co_so'] as String?,
      ngayHoc: data['ngay_hoc'] as String?,
      idTuTao: data['id_tu_tao'] as String?,
      isFileBaiGiang: data['is_file_bai_giang'] as bool?,
      idSinhHoat: data['id_sinh_hoat'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'is_hk_lien_truoc': isHkLienTruoc,
        'thu_kieu_so': thuKieuSo,
        'tiet_bat_dau': tietBatDau,
        'so_tiet': soTiet,
        'ma_mon': maMon,
        'ten_mon': tenMon,
        'so_tin_chi': soTinChi,
        'id_to_hoc': idToHoc,
        'id_tkb': idTkb,
        'id_to_hop': idToHop,
        'ma_nhom': maNhom,
        'ma_to_th': maToTh,
        'ma_to_hop': maToHop,
        'ma_giang_vien': maGiangVien,
        'ten_giang_vien': tenGiangVien,
        'ma_lop': maLop,
        'ma_phong': maPhong,
        'ma_co_so': maCoSo,
        'ngay_hoc': ngayHoc,
        'id_tu_tao': idTuTao,
        'is_file_bai_giang': isFileBaiGiang,
        'id_sinh_hoat': idSinhHoat,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DsThoiKhoaBieu].
  factory DsThoiKhoaBieu.fromJson(String data) {
    return DsThoiKhoaBieu.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DsThoiKhoaBieu] to a JSON string.
  String toJson() => json.encode(toMap());

  DsThoiKhoaBieu copyWith({
    int? isHkLienTruoc,
    int? thuKieuSo,
    int? tietBatDau,
    int? soTiet,
    String? maMon,
    String? tenMon,
    String? soTinChi,
    String? idToHoc,
    String? idTkb,
    String? idToHop,
    String? maNhom,
    String? maToTh,
    String? maToHop,
    String? maGiangVien,
    String? tenGiangVien,
    String? maLop,
    String? maPhong,
    String? maCoSo,
    String? ngayHoc,
    String? idTuTao,
    bool? isFileBaiGiang,
    String? idSinhHoat,
  }) {
    return DsThoiKhoaBieu(
      isHkLienTruoc: isHkLienTruoc ?? this.isHkLienTruoc,
      thuKieuSo: thuKieuSo ?? this.thuKieuSo,
      tietBatDau: tietBatDau ?? this.tietBatDau,
      soTiet: soTiet ?? this.soTiet,
      maMon: maMon ?? this.maMon,
      tenMon: tenMon ?? this.tenMon,
      soTinChi: soTinChi ?? this.soTinChi,
      idToHoc: idToHoc ?? this.idToHoc,
      idTkb: idTkb ?? this.idTkb,
      idToHop: idToHop ?? this.idToHop,
      maNhom: maNhom ?? this.maNhom,
      maToTh: maToTh ?? this.maToTh,
      maToHop: maToHop ?? this.maToHop,
      maGiangVien: maGiangVien ?? this.maGiangVien,
      tenGiangVien: tenGiangVien ?? this.tenGiangVien,
      maLop: maLop ?? this.maLop,
      maPhong: maPhong ?? this.maPhong,
      maCoSo: maCoSo ?? this.maCoSo,
      ngayHoc: ngayHoc ?? this.ngayHoc,
      idTuTao: idTuTao ?? this.idTuTao,
      isFileBaiGiang: isFileBaiGiang ?? this.isFileBaiGiang,
      idSinhHoat: idSinhHoat ?? this.idSinhHoat,
    );
  }

  @override
  List<Object?> get props {
    return [
      isHkLienTruoc,
      thuKieuSo,
      tietBatDau,
      soTiet,
      maMon,
      tenMon,
      soTinChi,
      idToHoc,
      idTkb,
      idToHop,
      maNhom,
      maToTh,
      maToHop,
      maGiangVien,
      tenGiangVien,
      maLop,
      maPhong,
      maCoSo,
      ngayHoc,
      idTuTao,
      isFileBaiGiang,
      idSinhHoat,
    ];
  }
}
