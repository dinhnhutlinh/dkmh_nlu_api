// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ds_tuan_tkb.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DsTuanTkb _$DsTuanTkbFromJson(Map<String, dynamic> json) => DsTuanTkb(
      tuanHocKy: json['tuan_hoc_ky'] as int?,
      tuanTuyetDoi: json['tuan_tuyet_doi'] as int?,
      thongTinTuan: json['thong_tin_tuan'] as String?,
      ngayBatDau: json['ngay_bat_dau'] as String?,
      ngayKetThuc: json['ngay_ket_thuc'] as String?,
      dsThoiKhoaBieu: (json['ds_thoi_khoa_bieu'] as List<dynamic>?)
          ?.map((e) => DsThoiKhoaBieu.fromJson(e as Map<String, dynamic>))
          .toList(),
      dsIdThoiKhoaBieuTrung:
          json['ds_id_thoi_khoa_bieu_trung'] as List<dynamic>?,
    );

Map<String, dynamic> _$DsTuanTkbToJson(DsTuanTkb instance) => <String, dynamic>{
      'tuan_hoc_ky': instance.tuanHocKy,
      'tuan_tuyet_doi': instance.tuanTuyetDoi,
      'thong_tin_tuan': instance.thongTinTuan,
      'ngay_bat_dau': instance.ngayBatDau,
      'ngay_ket_thuc': instance.ngayKetThuc,
      'ds_thoi_khoa_bieu': instance.dsThoiKhoaBieu,
      'ds_id_thoi_khoa_bieu_trung': instance.dsIdThoiKhoaBieuTrung,
    };
