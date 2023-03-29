import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'ds_du_lieu.dart';

part 'subjects.g.dart';

@JsonSerializable()
class Subjects extends Equatable {
  @JsonKey(name: 'total_items')
  final int? totalItems;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'ds_du_lieu')
  final List<DsDuLieu>? dsDuLieu;

  const Subjects({this.totalItems, this.totalPages, this.dsDuLieu});

  factory Subjects.fromJson(Map<String, dynamic> json) {
    return _$SubjectsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SubjectsToJson(this);

  Subjects copyWith({
    int? totalItems,
    int? totalPages,
    List<DsDuLieu>? dsDuLieu,
  }) {
    return Subjects(
      totalItems: totalItems ?? this.totalItems,
      totalPages: totalPages ?? this.totalPages,
      dsDuLieu: dsDuLieu ?? this.dsDuLieu,
    );
  }

  @override
  List<Object?> get props => [totalItems, totalPages, dsDuLieu];
}
