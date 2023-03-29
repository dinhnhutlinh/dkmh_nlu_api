import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notifications.g.dart';

@JsonSerializable()
class Notifications extends Equatable {
  @JsonKey(name: 'total_items')
  final int? totalItems;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  final int? notification;
  @JsonKey(name: 'ds_thong_bao')
  final List<dynamic>? dsThongBao;

  const Notifications({
    this.totalItems,
    this.totalPages,
    this.notification,
    this.dsThongBao,
  });

  factory Notifications.fromJson(Map<String, dynamic> json) {
    return _$NotificationsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NotificationsToJson(this);

  Notifications copyWith({
    int? totalItems,
    int? totalPages,
    int? notification,
    List<dynamic>? dsThongBao,
  }) {
    return Notifications(
      totalItems: totalItems ?? this.totalItems,
      totalPages: totalPages ?? this.totalPages,
      notification: notification ?? this.notification,
      dsThongBao: dsThongBao ?? this.dsThongBao,
    );
  }

  @override
  List<Object?> get props {
    return [
      totalItems,
      totalPages,
      notification,
      dsThongBao,
    ];
  }
}
