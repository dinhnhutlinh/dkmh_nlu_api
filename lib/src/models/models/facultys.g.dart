// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facultys.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Facultys _$FacultysFromJson(Map<String, dynamic> json) => Facultys(
      totalItems: json['total_items'] as int?,
      totalPages: json['total_pages'] as int?,
      dsDuLieu: (json['ds_du_lieu'] as List<dynamic>?)
          ?.map((e) => DsDuLieu.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FacultysToJson(Facultys instance) => <String, dynamic>{
      'total_items': instance.totalItems,
      'total_pages': instance.totalPages,
      'ds_du_lieu': instance.dsDuLieu,
    };
