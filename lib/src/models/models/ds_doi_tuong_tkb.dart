import 'dart:convert';

import 'package:equatable/equatable.dart';

class DsDoiTuongTkb extends Equatable {
  final int? loaiDoiTuong;
  final String? tenDoiTuong;

  const DsDoiTuongTkb({this.loaiDoiTuong, this.tenDoiTuong});

  factory DsDoiTuongTkb.fromMap(Map<String, dynamic> data) => DsDoiTuongTkb(
        loaiDoiTuong: data['loai_doi_tuong'] as int?,
        tenDoiTuong: data['ten_doi_tuong'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'loai_doi_tuong': loaiDoiTuong,
        'ten_doi_tuong': tenDoiTuong,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DsDoiTuongTkb].
  factory DsDoiTuongTkb.fromJson(String data) {
    return DsDoiTuongTkb.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DsDoiTuongTkb] to a JSON string.
  String toJson() => json.encode(toMap());

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
