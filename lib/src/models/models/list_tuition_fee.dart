import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'ds_hoc_ky.dart';

part 'list_tuition_fee.g.dart';

@JsonSerializable()
class ListTuitionFee extends Equatable {
  @JsonKey(name: 'total_items')
  final int? totalItems;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'ds_hoc_ky')
  final List<DsHocKy>? dsHocKy;

  const ListTuitionFee({this.totalItems, this.totalPages, this.dsHocKy});

  factory ListTuitionFee.fromJson(Map<String, dynamic> json) {
    return _$ListTuitionFeeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ListTuitionFeeToJson(this);

  ListTuitionFee copyWith({
    int? totalItems,
    int? totalPages,
    List<DsHocKy>? dsHocKy,
  }) {
    return ListTuitionFee(
      totalItems: totalItems ?? this.totalItems,
      totalPages: totalPages ?? this.totalPages,
      dsHocKy: dsHocKy ?? this.dsHocKy,
    );
  }

  @override
  List<Object?> get props => [totalItems, totalPages, dsHocKy];
}
