import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'ds_diem_mon_hoc.dart';

class DsDiemHocky extends Equatable {
  final int? loaiNganh;
  final String? hocKy;
  final String? tenHocKy;
  final String? dtbHkHe10;
  final String? dtbHkHe4;
  final String? dtbTichLuyHe10;
  final String? dtbTichLuyHe4;
  final String? soTinChiDatHk;
  final String? soTinChiDatTichLuy;
  final bool? hienThiTkHe10;
  final bool? hienThiTkHe4;
  final List<DsDiemMonHoc>? dsDiemMonHoc;

  const DsDiemHocky({
    this.loaiNganh,
    this.hocKy,
    this.tenHocKy,
    this.dtbHkHe10,
    this.dtbHkHe4,
    this.dtbTichLuyHe10,
    this.dtbTichLuyHe4,
    this.soTinChiDatHk,
    this.soTinChiDatTichLuy,
    this.hienThiTkHe10,
    this.hienThiTkHe4,
    this.dsDiemMonHoc,
  });

  factory DsDiemHocky.fromMap(Map<String, dynamic> data) => DsDiemHocky(
        loaiNganh: data['loai_nganh'] as int?,
        hocKy: data['hoc_ky'] as String?,
        tenHocKy: data['ten_hoc_ky'] as String?,
        dtbHkHe10: data['dtb_hk_he10'] as String?,
        dtbHkHe4: data['dtb_hk_he4'] as String?,
        dtbTichLuyHe10: data['dtb_tich_luy_he_10'] as String?,
        dtbTichLuyHe4: data['dtb_tich_luy_he_4'] as String?,
        soTinChiDatHk: data['so_tin_chi_dat_hk'] as String?,
        soTinChiDatTichLuy: data['so_tin_chi_dat_tich_luy'] as String?,
        hienThiTkHe10: data['hien_thi_tk_he_10'] as bool?,
        hienThiTkHe4: data['hien_thi_tk_he_4'] as bool?,
        dsDiemMonHoc: (data['ds_diem_mon_hoc'] as List<dynamic>?)
            ?.map((e) => DsDiemMonHoc.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'loai_nganh': loaiNganh,
        'hoc_ky': hocKy,
        'ten_hoc_ky': tenHocKy,
        'dtb_hk_he10': dtbHkHe10,
        'dtb_hk_he4': dtbHkHe4,
        'dtb_tich_luy_he_10': dtbTichLuyHe10,
        'dtb_tich_luy_he_4': dtbTichLuyHe4,
        'so_tin_chi_dat_hk': soTinChiDatHk,
        'so_tin_chi_dat_tich_luy': soTinChiDatTichLuy,
        'hien_thi_tk_he_10': hienThiTkHe10,
        'hien_thi_tk_he_4': hienThiTkHe4,
        'ds_diem_mon_hoc': dsDiemMonHoc?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DsDiemHocky].
  factory DsDiemHocky.fromJson(String data) {
    return DsDiemHocky.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DsDiemHocky] to a JSON string.
  String toJson() => json.encode(toMap());

  DsDiemHocky copyWith({
    int? loaiNganh,
    String? hocKy,
    String? tenHocKy,
    String? dtbHkHe10,
    String? dtbHkHe4,
    String? dtbTichLuyHe10,
    String? dtbTichLuyHe4,
    String? soTinChiDatHk,
    String? soTinChiDatTichLuy,
    bool? hienThiTkHe10,
    bool? hienThiTkHe4,
    List<DsDiemMonHoc>? dsDiemMonHoc,
  }) {
    return DsDiemHocky(
      loaiNganh: loaiNganh ?? this.loaiNganh,
      hocKy: hocKy ?? this.hocKy,
      tenHocKy: tenHocKy ?? this.tenHocKy,
      dtbHkHe10: dtbHkHe10 ?? this.dtbHkHe10,
      dtbHkHe4: dtbHkHe4 ?? this.dtbHkHe4,
      dtbTichLuyHe10: dtbTichLuyHe10 ?? this.dtbTichLuyHe10,
      dtbTichLuyHe4: dtbTichLuyHe4 ?? this.dtbTichLuyHe4,
      soTinChiDatHk: soTinChiDatHk ?? this.soTinChiDatHk,
      soTinChiDatTichLuy: soTinChiDatTichLuy ?? this.soTinChiDatTichLuy,
      hienThiTkHe10: hienThiTkHe10 ?? this.hienThiTkHe10,
      hienThiTkHe4: hienThiTkHe4 ?? this.hienThiTkHe4,
      dsDiemMonHoc: dsDiemMonHoc ?? this.dsDiemMonHoc,
    );
  }

  @override
  List<Object?> get props {
    return [
      loaiNganh,
      hocKy,
      tenHocKy,
      dtbHkHe10,
      dtbHkHe4,
      dtbTichLuyHe10,
      dtbTichLuyHe4,
      soTinChiDatHk,
      soTinChiDatTichLuy,
      hienThiTkHe10,
      hienThiTkHe4,
      dsDiemMonHoc,
    ];
  }
}
