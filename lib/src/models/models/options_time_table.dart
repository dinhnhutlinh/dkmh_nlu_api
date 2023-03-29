import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'ds_doi_tuong_tkb.dart';

part 'options_time_table.g.dart';

@JsonSerializable()
class OptionsTimeTable extends Equatable {
  @JsonKey(name: 'total_items')
  final int? totalItems;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'ds_doi_tuong_tkb')
  final List<DsDoiTuongTkb>? dsDoiTuongTkb;

  const OptionsTimeTable({
    this.totalItems,
    this.totalPages,
    this.dsDoiTuongTkb,
  });

  factory OptionsTimeTable.fromJson(Map<String, dynamic> json) {
    return _$OptionsTimeTableFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OptionsTimeTableToJson(this);

  OptionsTimeTable copyWith({
    int? totalItems,
    int? totalPages,
    List<DsDoiTuongTkb>? dsDoiTuongTkb,
  }) {
    return OptionsTimeTable(
      totalItems: totalItems ?? this.totalItems,
      totalPages: totalPages ?? this.totalPages,
      dsDoiTuongTkb: dsDoiTuongTkb ?? this.dsDoiTuongTkb,
    );
  }

  @override
  List<Object?> get props => [totalItems, totalPages, dsDoiTuongTkb];
}
