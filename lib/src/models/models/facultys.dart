import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'ds_du_lieu.dart';

part 'facultys.g.dart';

@JsonSerializable()
class Facultys extends Equatable {
  @JsonKey(name: 'total_items')
  final int? totalItems;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'ds_du_lieu')
  final List<DsDuLieu>? dsDuLieu;

  const Facultys({this.totalItems, this.totalPages, this.dsDuLieu});

  factory Facultys.fromJson(Map<String, dynamic> json) {
    return _$FacultysFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FacultysToJson(this);

  Facultys copyWith({
    int? totalItems,
    int? totalPages,
    List<DsDuLieu>? dsDuLieu,
  }) {
    return Facultys(
      totalItems: totalItems ?? this.totalItems,
      totalPages: totalPages ?? this.totalPages,
      dsDuLieu: dsDuLieu ?? this.dsDuLieu,
    );
  }

  @override
  List<Object?> get props => [totalItems, totalPages, dsDuLieu];
}
