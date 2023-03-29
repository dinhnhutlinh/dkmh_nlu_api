// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_table_by_persion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeTableByPersion _$TimeTableByPersionFromJson(Map<String, dynamic> json) =>
    TimeTableByPersion(
      totalItems: json['total_items'] as int?,
      totalPages: json['total_pages'] as int?,
      dsTietTrongNgay: (json['ds_tiet_trong_ngay'] as List<dynamic>?)
          ?.map((e) => DsTietTrongNgay.fromJson(e as Map<String, dynamic>))
          .toList(),
      dsTuanTkb: (json['ds_tuan_tkb'] as List<dynamic>?)
          ?.map((e) => DsTuanTkb.fromJson(e as Map<String, dynamic>))
          .toList(),
      isDuocDiemDanh: json['is_duoc_diem_danh'] as bool?,
      isDuocDkNghiDay: json['is_duoc_dk_nghi_day'] as bool?,
      isQuanLyHocLieu: json['is_quan_ly_hoc_lieu'] as bool?,
      isShowTiet: json['is_show_tiet'] as bool?,
    );

Map<String, dynamic> _$TimeTableByPersionToJson(TimeTableByPersion instance) =>
    <String, dynamic>{
      'total_items': instance.totalItems,
      'total_pages': instance.totalPages,
      'ds_tiet_trong_ngay': instance.dsTietTrongNgay,
      'ds_tuan_tkb': instance.dsTuanTkb,
      'is_duoc_diem_danh': instance.isDuocDiemDanh,
      'is_duoc_dk_nghi_day': instance.isDuocDkNghiDay,
      'is_quan_ly_hoc_lieu': instance.isQuanLyHocLieu,
      'is_show_tiet': instance.isShowTiet,
    };
