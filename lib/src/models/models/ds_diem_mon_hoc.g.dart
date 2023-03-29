// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ds_diem_mon_hoc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DsDiemMonHoc _$DsDiemMonHocFromJson(Map<String, dynamic> json) => DsDiemMonHoc(
      tenMon: json['ten_mon'] as String?,
      ketQua: json['ket_qua'] as int?,
      hienThiKetQua: json['hien_thi_ket_qua'] as bool?,
      khoaThi: json['KhoaThi'] as int?,
      dsDiemThanhPhan: json['ds_diem_thanh_phan'] as List<dynamic>?,
    );

Map<String, dynamic> _$DsDiemMonHocToJson(DsDiemMonHoc instance) =>
    <String, dynamic>{
      'ten_mon': instance.tenMon,
      'ket_qua': instance.ketQua,
      'hien_thi_ket_qua': instance.hienThiKetQua,
      'KhoaThi': instance.khoaThi,
      'ds_diem_thanh_phan': instance.dsDiemThanhPhan,
    };
