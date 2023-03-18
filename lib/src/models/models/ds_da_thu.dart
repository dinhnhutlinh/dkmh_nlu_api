import 'dart:convert';

import 'package:equatable/equatable.dart';

class DsDaThu extends Equatable {
  final String? noiDungThu;
  final String? maMon;
  final String? dienGiai;
  final String? daThu;
  final String? ngayThu;

  const DsDaThu({
    this.noiDungThu,
    this.maMon,
    this.dienGiai,
    this.daThu,
    this.ngayThu,
  });

  factory DsDaThu.fromMap(Map<String, dynamic> data) => DsDaThu(
        noiDungThu: data['noi_dung_thu'] as String?,
        maMon: data['ma_mon'] as String?,
        dienGiai: data['dien_giai'] as String?,
        daThu: data['da_thu'] as String?,
        ngayThu: data['ngay_thu'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'noi_dung_thu': noiDungThu,
        'ma_mon': maMon,
        'dien_giai': dienGiai,
        'da_thu': daThu,
        'ngay_thu': ngayThu,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DsDaThu].
  factory DsDaThu.fromJson(String data) {
    return DsDaThu.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DsDaThu] to a JSON string.
  String toJson() => json.encode(toMap());

  DsDaThu copyWith({
    String? noiDungThu,
    String? maMon,
    String? dienGiai,
    String? daThu,
    String? ngayThu,
  }) {
    return DsDaThu(
      noiDungThu: noiDungThu ?? this.noiDungThu,
      maMon: maMon ?? this.maMon,
      dienGiai: dienGiai ?? this.dienGiai,
      daThu: daThu ?? this.daThu,
      ngayThu: ngayThu ?? this.ngayThu,
    );
  }

  @override
  List<Object?> get props {
    return [
      noiDungThu,
      maMon,
      dienGiai,
      daThu,
      ngayThu,
    ];
  }
}
