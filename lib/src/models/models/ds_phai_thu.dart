import 'dart:convert';

import 'package:equatable/equatable.dart';

class DsPhaiThu extends Equatable {
  final int? hocKy;
  final String? maMon;
  final String? dienGiai;
  final String? soTinChiHp;
  final String? hocPhi;
  final bool? isHocLai;
  final String? mienGiam;
  final String? phaiThu;

  const DsPhaiThu({
    this.hocKy,
    this.maMon,
    this.dienGiai,
    this.soTinChiHp,
    this.hocPhi,
    this.isHocLai,
    this.mienGiam,
    this.phaiThu,
  });

  factory DsPhaiThu.fromMap(Map<String, dynamic> data) => DsPhaiThu(
        hocKy: data['hoc_ky'] as int?,
        maMon: data['ma_mon'] as String?,
        dienGiai: data['dien_giai'] as String?,
        soTinChiHp: data['so_tin_chi_hp'] as String?,
        hocPhi: data['hoc_phi'] as String?,
        isHocLai: data['is_hoc_lai'] as bool?,
        mienGiam: data['mien_giam'] as String?,
        phaiThu: data['phai_thu'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'hoc_ky': hocKy,
        'ma_mon': maMon,
        'dien_giai': dienGiai,
        'so_tin_chi_hp': soTinChiHp,
        'hoc_phi': hocPhi,
        'is_hoc_lai': isHocLai,
        'mien_giam': mienGiam,
        'phai_thu': phaiThu,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DsPhaiThu].
  factory DsPhaiThu.fromJson(String data) {
    return DsPhaiThu.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DsPhaiThu] to a JSON string.
  String toJson() => json.encode(toMap());

  DsPhaiThu copyWith({
    int? hocKy,
    String? maMon,
    String? dienGiai,
    String? soTinChiHp,
    String? hocPhi,
    bool? isHocLai,
    String? mienGiam,
    String? phaiThu,
  }) {
    return DsPhaiThu(
      hocKy: hocKy ?? this.hocKy,
      maMon: maMon ?? this.maMon,
      dienGiai: dienGiai ?? this.dienGiai,
      soTinChiHp: soTinChiHp ?? this.soTinChiHp,
      hocPhi: hocPhi ?? this.hocPhi,
      isHocLai: isHocLai ?? this.isHocLai,
      mienGiam: mienGiam ?? this.mienGiam,
      phaiThu: phaiThu ?? this.phaiThu,
    );
  }

  @override
  List<Object?> get props {
    return [
      hocKy,
      maMon,
      dienGiai,
      soTinChiHp,
      hocPhi,
      isHocLai,
      mienGiam,
      phaiThu,
    ];
  }
}
