// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_time_table_semester.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListTimeTableSemester _$ListTimeTableSemesterFromJson(
        Map<String, dynamic> json) =>
    ListTimeTableSemester(
      totalItems: json['total_items'] as int?,
      totalPages: json['total_pages'] as int?,
      dsHocKy: (json['ds_hoc_ky'] as List<dynamic>?)
          ?.map((e) => DsHocKy.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListTimeTableSemesterToJson(
        ListTimeTableSemester instance) =>
    <String, dynamic>{
      'total_items': instance.totalItems,
      'total_pages': instance.totalPages,
      'ds_hoc_ky': instance.dsHocKy,
    };
