import 'dart:convert';

import 'package:equatable/equatable.dart';

class DsHocKy extends Equatable {
  final int? hocKy;
  final String? tenHocKy;
  final int? hiendiensv;

  const DsHocKy({this.hocKy, this.tenHocKy, this.hiendiensv});

  factory DsHocKy.fromMap(Map<String, dynamic> data) => DsHocKy(
        hocKy: data['hoc_ky'] as int?,
        tenHocKy: data['ten_hoc_ky'] as String?,
        hiendiensv: data['hiendiensv'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'hoc_ky': hocKy,
        'ten_hoc_ky': tenHocKy,
        'hiendiensv': hiendiensv,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DsHocKy].
  factory DsHocKy.fromJson(String data) {
    return DsHocKy.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DsHocKy] to a JSON string.
  String toJson() => json.encode(toMap());

  DsHocKy copyWith({
    int? hocKy,
    String? tenHocKy,
    int? hiendiensv,
  }) {
    return DsHocKy(
      hocKy: hocKy ?? this.hocKy,
      tenHocKy: tenHocKy ?? this.tenHocKy,
      hiendiensv: hiendiensv ?? this.hiendiensv,
    );
  }

  @override
  List<Object?> get props => [hocKy, tenHocKy, hiendiensv];
}
