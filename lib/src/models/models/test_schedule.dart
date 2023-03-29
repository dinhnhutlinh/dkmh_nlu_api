import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'ds_lich_thi.dart';

part 'test_schedule.g.dart';

@JsonSerializable()
class TestSchedule extends Equatable {
  @JsonKey(name: 'total_items')
  final int? totalItems;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'is_DHMO')
  final bool? isDhmo;
  @JsonKey(name: 'ds_lich_thi')
  final List<DsLichThi>? dsLichThi;

  const TestSchedule({
    this.totalItems,
    this.totalPages,
    this.isDhmo,
    this.dsLichThi,
  });

  factory TestSchedule.fromJson(Map<String, dynamic> json) {
    return _$TestScheduleFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TestScheduleToJson(this);

  TestSchedule copyWith({
    int? totalItems,
    int? totalPages,
    bool? isDhmo,
    List<DsLichThi>? dsLichThi,
  }) {
    return TestSchedule(
      totalItems: totalItems ?? this.totalItems,
      totalPages: totalPages ?? this.totalPages,
      isDhmo: isDhmo ?? this.isDhmo,
      dsLichThi: dsLichThi ?? this.dsLichThi,
    );
  }

  @override
  List<Object?> get props => [totalItems, totalPages, isDhmo, dsLichThi];
}
