import 'dart:convert';

import 'package:equatable/equatable.dart';

class DsDuLieu extends Equatable {
  final String? idDuLieu;
  final String? maDuLieu;
  final String? tenDuLieu;

  const DsDuLieu({this.idDuLieu, this.maDuLieu, this.tenDuLieu});

  factory DsDuLieu.fromMap(Map<String, dynamic> data) => DsDuLieu(
        idDuLieu: data['id_du_lieu'] as String?,
        maDuLieu: data['ma_du_lieu'] as String?,
        tenDuLieu: data['ten_du_lieu'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id_du_lieu': idDuLieu,
        'ma_du_lieu': maDuLieu,
        'ten_du_lieu': tenDuLieu,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DsDuLieu].
  factory DsDuLieu.fromJson(String data) {
    return DsDuLieu.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DsDuLieu] to a JSON string.
  String toJson() => json.encode(toMap());

  DsDuLieu copyWith({
    String? idDuLieu,
    String? maDuLieu,
    String? tenDuLieu,
  }) {
    return DsDuLieu(
      idDuLieu: idDuLieu ?? this.idDuLieu,
      maDuLieu: maDuLieu ?? this.maDuLieu,
      tenDuLieu: tenDuLieu ?? this.tenDuLieu,
    );
  }

  @override
  List<Object?> get props => [idDuLieu, maDuLieu, tenDuLieu];
}
