// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ds_diem_hocky.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DsDiemHocky _$DsDiemHockyFromJson(Map<String, dynamic> json) => DsDiemHocky(
      loaiNganh: json['loai_nganh'] as int?,
      hocKy: json['hoc_ky'] as String?,
      tenHocKy: json['ten_hoc_ky'] as String?,
      dtbHkHe10: json['dtb_hk_he10'] as String?,
      dtbHkHe4: json['dtb_hk_he4'] as String?,
      dtbTichLuyHe10: json['dtb_tich_luy_he_10'] as String?,
      dtbTichLuyHe4: json['dtb_tich_luy_he_4'] as String?,
      soTinChiDatHk: json['so_tin_chi_dat_hk'] as String?,
      soTinChiDatTichLuy: json['so_tin_chi_dat_tich_luy'] as String?,
      hienThiTkHe10: json['hien_thi_tk_he_10'] as bool?,
      hienThiTkHe4: json['hien_thi_tk_he_4'] as bool?,
      dsDiemMonHoc: (json['ds_diem_mon_hoc'] as List<dynamic>?)
          ?.map((e) => DsDiemMonHoc.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DsDiemHockyToJson(DsDiemHocky instance) =>
    <String, dynamic>{
      'loai_nganh': instance.loaiNganh,
      'hoc_ky': instance.hocKy,
      'ten_hoc_ky': instance.tenHocKy,
      'dtb_hk_he10': instance.dtbHkHe10,
      'dtb_hk_he4': instance.dtbHkHe4,
      'dtb_tich_luy_he_10': instance.dtbTichLuyHe10,
      'dtb_tich_luy_he_4': instance.dtbTichLuyHe4,
      'so_tin_chi_dat_hk': instance.soTinChiDatHk,
      'so_tin_chi_dat_tich_luy': instance.soTinChiDatTichLuy,
      'hien_thi_tk_he_10': instance.hienThiTkHe10,
      'hien_thi_tk_he_4': instance.hienThiTkHe4,
      'ds_diem_mon_hoc': instance.dsDiemMonHoc,
    };
