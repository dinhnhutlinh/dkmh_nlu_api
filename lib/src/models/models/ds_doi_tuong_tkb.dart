import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ds_doi_tuong_tkb.g.dart';

@JsonSerializable()
class DsDoiTuongTkb extends Equatable {
  @JsonKey(name: 'loai_doi_tuong')
  final int? loaiDoiTuong;
  @JsonKey(name: 'ten_doi_tuong')
  final String? tenDoiTuong;

  const DsDoiTuongTkb({this.loaiDoiTuong, this.tenDoiTuong});

  factory DsDoiTuongTkb.fromJson(Map<String, dynamic> json) {
    return _$DsDoiTuongTkbFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DsDoiTuongTkbToJson(this);

  DsDoiTuongTkb copyWith({
    int? loaiDoiTuong,
    String? tenDoiTuong,
  }) {
    return DsDoiTuongTkb(
      loaiDoiTuong: loaiDoiTuong ?? this.loaiDoiTuong,
      tenDoiTuong: tenDoiTuong ?? this.tenDoiTuong,
    );
  }

  @override
  List<Object?> get props => [loaiDoiTuong, tenDoiTuong];
}
