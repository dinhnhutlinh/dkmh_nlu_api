import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'ds_hoc_ky.dart';

part 'list_time_table_semester.g.dart';

@JsonSerializable()
class ListTimeTableSemester extends Equatable {
  @JsonKey(name: 'total_items')
  final int? totalItems;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'ds_hoc_ky')
  final List<DsHocKy>? dsHocKy;

  const ListTimeTableSemester({
    this.totalItems,
    this.totalPages,
    this.dsHocKy,
  });

  factory ListTimeTableSemester.fromJson(Map<String, dynamic> json) {
    return _$ListTimeTableSemesterFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ListTimeTableSemesterToJson(this);

  ListTimeTableSemester copyWith({
    int? totalItems,
    int? totalPages,
    List<DsHocKy>? dsHocKy,
  }) {
    return ListTimeTableSemester(
      totalItems: totalItems ?? this.totalItems,
      totalPages: totalPages ?? this.totalPages,
      dsHocKy: dsHocKy ?? this.dsHocKy,
    );
  }

  @override
  List<Object?> get props => [totalItems, totalPages, dsHocKy];
}
