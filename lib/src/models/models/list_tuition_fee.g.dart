// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_tuition_fee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListTuitionFee _$ListTuitionFeeFromJson(Map<String, dynamic> json) =>
    ListTuitionFee(
      totalItems: json['total_items'] as int?,
      totalPages: json['total_pages'] as int?,
      dsHocKy: (json['ds_hoc_ky'] as List<dynamic>?)
          ?.map((e) => DsHocKy.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListTuitionFeeToJson(ListTuitionFee instance) =>
    <String, dynamic>{
      'total_items': instance.totalItems,
      'total_pages': instance.totalPages,
      'ds_hoc_ky': instance.dsHocKy,
    };
