// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Notifications _$NotificationsFromJson(Map<String, dynamic> json) =>
    Notifications(
      totalItems: json['total_items'] as int?,
      totalPages: json['total_pages'] as int?,
      notification: json['notification'] as int?,
      dsThongBao: json['ds_thong_bao'] as List<dynamic>?,
    );

Map<String, dynamic> _$NotificationsToJson(Notifications instance) =>
    <String, dynamic>{
      'total_items': instance.totalItems,
      'total_pages': instance.totalPages,
      'notification': instance.notification,
      'ds_thong_bao': instance.dsThongBao,
    };
