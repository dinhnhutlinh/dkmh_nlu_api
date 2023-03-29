// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestSchedule _$TestScheduleFromJson(Map<String, dynamic> json) => TestSchedule(
      totalItems: json['total_items'] as int?,
      totalPages: json['total_pages'] as int?,
      isDhmo: json['is_DHMO'] as bool?,
      dsLichThi: (json['ds_lich_thi'] as List<dynamic>?)
          ?.map((e) => DsLichThi.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TestScheduleToJson(TestSchedule instance) =>
    <String, dynamic>{
      'total_items': instance.totalItems,
      'total_pages': instance.totalPages,
      'is_DHMO': instance.isDhmo,
      'ds_lich_thi': instance.dsLichThi,
    };
