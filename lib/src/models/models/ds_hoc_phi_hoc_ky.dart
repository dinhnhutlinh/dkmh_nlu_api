import 'dart:convert';

import 'package:equatable/equatable.dart';

class DsHocPhiHocKy extends Equatable {
  final String? tenNhomCt;
  final String? tenHocKy;
  final String? hocPhi;
  final String? mienGiam;
  final String? phaiThu;
  final String? tongHocBong;
  final String? daThu;
  final String? conNo;

  const DsHocPhiHocKy({
    this.tenNhomCt,
    this.tenHocKy,
    this.hocPhi,
    this.mienGiam,
    this.phaiThu,
    this.tongHocBong,
    this.daThu,
    this.conNo,
  });

  factory DsHocPhiHocKy.fromMap(Map<String, dynamic> data) => DsHocPhiHocKy(
        tenNhomCt: data['ten_nhom_ct'] as String?,
        tenHocKy: data['ten_hoc_ky'] as String?,
        hocPhi: data['hoc_phi'] as String?,
        mienGiam: data['mien_giam'] as String?,
        phaiThu: data['phai_thu'] as String?,
        tongHocBong: data['tong_hoc_bong'] as String?,
        daThu: data['da_thu'] as String?,
        conNo: data['con_no'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'ten_nhom_ct': tenNhomCt,
        'ten_hoc_ky': tenHocKy,
        'hoc_phi': hocPhi,
        'mien_giam': mienGiam,
        'phai_thu': phaiThu,
        'tong_hoc_bong': tongHocBong,
        'da_thu': daThu,
        'con_no': conNo,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DsHocPhiHocKy].
  factory DsHocPhiHocKy.fromJson(String data) {
    return DsHocPhiHocKy.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DsHocPhiHocKy] to a JSON string.
  String toJson() => json.encode(toMap());

  DsHocPhiHocKy copyWith({
    String? tenNhomCt,
    String? tenHocKy,
    String? hocPhi,
    String? mienGiam,
    String? phaiThu,
    String? tongHocBong,
    String? daThu,
    String? conNo,
  }) {
    return DsHocPhiHocKy(
      tenNhomCt: tenNhomCt ?? this.tenNhomCt,
      tenHocKy: tenHocKy ?? this.tenHocKy,
      hocPhi: hocPhi ?? this.hocPhi,
      mienGiam: mienGiam ?? this.mienGiam,
      phaiThu: phaiThu ?? this.phaiThu,
      tongHocBong: tongHocBong ?? this.tongHocBong,
      daThu: daThu ?? this.daThu,
      conNo: conNo ?? this.conNo,
    );
  }

  @override
  List<Object?> get props {
    return [
      tenNhomCt,
      tenHocKy,
      hocPhi,
      mienGiam,
      phaiThu,
      tongHocBong,
      daThu,
      conNo,
    ];
  }
}
