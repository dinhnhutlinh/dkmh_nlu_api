import 'dart:convert';

import 'package:equatable/equatable.dart';

class DsDiemMonHoc extends Equatable {
  final String? tenMon;
  final int? ketQua;
  final bool? hienThiKetQua;
  final int? khoaThi;
  final List<dynamic>? dsDiemThanhPhan;

  const DsDiemMonHoc({
    this.tenMon,
    this.ketQua,
    this.hienThiKetQua,
    this.khoaThi,
    this.dsDiemThanhPhan,
  });

  factory DsDiemMonHoc.fromMap(Map<String, dynamic> data) => DsDiemMonHoc(
        tenMon: data['ten_mon'] as String?,
        ketQua: data['ket_qua'] as int?,
        hienThiKetQua: data['hien_thi_ket_qua'] as bool?,
        khoaThi: data['KhoaThi'] as int?,
        dsDiemThanhPhan: data['ds_diem_thanh_phan'] as List<dynamic>?,
      );

  Map<String, dynamic> toMap() => {
        'ten_mon': tenMon,
        'ket_qua': ketQua,
        'hien_thi_ket_qua': hienThiKetQua,
        'KhoaThi': khoaThi,
        'ds_diem_thanh_phan': dsDiemThanhPhan,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DsDiemMonHoc].
  factory DsDiemMonHoc.fromJson(String data) {
    return DsDiemMonHoc.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DsDiemMonHoc] to a JSON string.
  String toJson() => json.encode(toMap());

  DsDiemMonHoc copyWith({
    String? tenMon,
    int? ketQua,
    bool? hienThiKetQua,
    int? khoaThi,
    List<dynamic>? dsDiemThanhPhan,
  }) {
    return DsDiemMonHoc(
      tenMon: tenMon ?? this.tenMon,
      ketQua: ketQua ?? this.ketQua,
      hienThiKetQua: hienThiKetQua ?? this.hienThiKetQua,
      khoaThi: khoaThi ?? this.khoaThi,
      dsDiemThanhPhan: dsDiemThanhPhan ?? this.dsDiemThanhPhan,
    );
  }

  @override
  List<Object?> get props {
    return [
      tenMon,
      ketQua,
      hienThiKetQua,
      khoaThi,
      dsDiemThanhPhan,
    ];
  }
}
