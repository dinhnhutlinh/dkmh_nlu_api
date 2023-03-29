import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'ds_doi_tuong_tkb.dart';

part 'list_test_score.g.dart';

@JsonSerializable()
class ListTestScore extends Equatable {
  @JsonKey(name: 'total_items')
  final int? totalItems;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'ds_doi_tuong_tkb')
  final List<DsDoiTuongTkb>? dsDoiTuongTkb;

  const ListTestScore({
    this.totalItems,
    this.totalPages,
    this.dsDoiTuongTkb,
  });

  factory ListTestScore.fromJson(Map<String, dynamic> json) {
    return _$ListTestScoreFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ListTestScoreToJson(this);

  ListTestScore copyWith({
    int? totalItems,
    int? totalPages,
    List<DsDoiTuongTkb>? dsDoiTuongTkb,
  }) {
    return ListTestScore(
      totalItems: totalItems ?? this.totalItems,
      totalPages: totalPages ?? this.totalPages,
      dsDoiTuongTkb: dsDoiTuongTkb ?? this.dsDoiTuongTkb,
    );
  }

  @override
  List<Object?> get props => [totalItems, totalPages, dsDoiTuongTkb];
}
