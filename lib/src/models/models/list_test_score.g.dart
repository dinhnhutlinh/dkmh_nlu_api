// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_test_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListTestScore _$ListTestScoreFromJson(Map<String, dynamic> json) =>
    ListTestScore(
      totalItems: json['total_items'] as int?,
      totalPages: json['total_pages'] as int?,
      dsDoiTuongTkb: (json['ds_doi_tuong_tkb'] as List<dynamic>?)
          ?.map((e) => DsDoiTuongTkb.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListTestScoreToJson(ListTestScore instance) =>
    <String, dynamic>{
      'total_items': instance.totalItems,
      'total_pages': instance.totalPages,
      'ds_doi_tuong_tkb': instance.dsDoiTuongTkb,
    };
