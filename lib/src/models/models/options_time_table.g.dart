// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'options_time_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OptionsTimeTable _$OptionsTimeTableFromJson(Map<String, dynamic> json) =>
    OptionsTimeTable(
      totalItems: json['total_items'] as int?,
      totalPages: json['total_pages'] as int?,
      dsDoiTuongTkb: (json['ds_doi_tuong_tkb'] as List<dynamic>?)
          ?.map((e) => DsDoiTuongTkb.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OptionsTimeTableToJson(OptionsTimeTable instance) =>
    <String, dynamic>{
      'total_items': instance.totalItems,
      'total_pages': instance.totalPages,
      'ds_doi_tuong_tkb': instance.dsDoiTuongTkb,
    };
