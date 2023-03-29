import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'ds_diem_mon_hoc.dart';

part 'ds_diem_hocky.g.dart';

@JsonSerializable()
class DsDiemHocky extends Equatable {
  @JsonKey(name: 'loai_nganh')
  final int? loaiNganh;
  @JsonKey(name: 'hoc_ky')
  final String? hocKy;
  @JsonKey(name: 'ten_hoc_ky')
  final String? tenHocKy;
  @JsonKey(name: 'dtb_hk_he10')
  final String? dtbHkHe10;
  @JsonKey(name: 'dtb_hk_he4')
  final String? dtbHkHe4;
  @JsonKey(name: 'dtb_tich_luy_he_10')
  final String? dtbTichLuyHe10;
  @JsonKey(name: 'dtb_tich_luy_he_4')
  final String? dtbTichLuyHe4;
  @JsonKey(name: 'so_tin_chi_dat_hk')
  final String? soTinChiDatHk;
  @JsonKey(name: 'so_tin_chi_dat_tich_luy')
  final String? soTinChiDatTichLuy;
  @JsonKey(name: 'hien_thi_tk_he_10')
  final bool? hienThiTkHe10;
  @JsonKey(name: 'hien_thi_tk_he_4')
  final bool? hienThiTkHe4;
  @JsonKey(name: 'ds_diem_mon_hoc')
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

  factory DsDiemHocky.fromJson(Map<String, dynamic> json) {
    return _$DsDiemHockyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DsDiemHockyToJson(this);

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
