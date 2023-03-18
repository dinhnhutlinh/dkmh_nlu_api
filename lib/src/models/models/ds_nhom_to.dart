import 'dart:convert';

import 'package:equatable/equatable.dart';

class DsNhomTo extends Equatable {
  final String? idToHoc;
  final String? idMon;
  final String? maMon;
  final String? tenMon;
  final String? soTc;
  final int? soTcSo;
  final bool? isVuot;
  final String? nhomTo;
  final String? lop;
  final bool? isKdk;
  final int? slDk;
  final int? slCp;
  final int? slCl;
  final String? tkb;
  final bool? isHl;
  final bool? enable;
  final bool? hauk;
  final bool? isDk;
  final bool? isRot;
  final bool? isCtdt;
  final bool? isChctdt;
  final bool? isKgLt;
  final int? thu;
  final int? tbd;
  final int? soTiet;
  final String? denGio;
  final String? phong;
  final String? gv;
  final String? gcToHoc;

  const DsNhomTo({
    this.idToHoc,
    this.idMon,
    this.maMon,
    this.tenMon,
    this.soTc,
    this.soTcSo,
    this.isVuot,
    this.nhomTo,
    this.lop,
    this.isKdk,
    this.slDk,
    this.slCp,
    this.slCl,
    this.tkb,
    this.isHl,
    this.enable,
    this.hauk,
    this.isDk,
    this.isRot,
    this.isCtdt,
    this.isChctdt,
    this.isKgLt,
    this.thu,
    this.tbd,
    this.soTiet,
    this.denGio,
    this.phong,
    this.gv,
    this.gcToHoc,
  });

  factory DsNhomTo.fromMap(Map<String, dynamic> data) => DsNhomTo(
        idToHoc: data['id_to_hoc'] as String?,
        idMon: data['id_mon'] as String?,
        maMon: data['ma_mon'] as String?,
        tenMon: data['ten_mon'] as String?,
        soTc: data['so_tc'] as String?,
        soTcSo: data['so_tc_so'] as int?,
        isVuot: data['is_vuot'] as bool?,
        nhomTo: data['nhom_to'] as String?,
        lop: data['lop'] as String?,
        isKdk: data['is_kdk'] as bool?,
        slDk: data['sl_dk'] as int?,
        slCp: data['sl_cp'] as int?,
        slCl: data['sl_cl'] as int?,
        tkb: data['tkb'] as String?,
        isHl: data['is_hl'] as bool?,
        enable: data['enable'] as bool?,
        hauk: data['hauk'] as bool?,
        isDk: data['is_dk'] as bool?,
        isRot: data['is_rot'] as bool?,
        isCtdt: data['is_ctdt'] as bool?,
        isChctdt: data['is_chctdt'] as bool?,
        isKgLt: data['is_kg_lt'] as bool?,
        thu: data['thu'] as int?,
        tbd: data['tbd'] as int?,
        soTiet: data['so_tiet'] as int?,
        denGio: data['den_gio'] as String?,
        phong: data['phong'] as String?,
        gv: data['gv'] as String?,
        gcToHoc: data['gc_to_hoc'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id_to_hoc': idToHoc,
        'id_mon': idMon,
        'ma_mon': maMon,
        'ten_mon': tenMon,
        'so_tc': soTc,
        'so_tc_so': soTcSo,
        'is_vuot': isVuot,
        'nhom_to': nhomTo,
        'lop': lop,
        'is_kdk': isKdk,
        'sl_dk': slDk,
        'sl_cp': slCp,
        'sl_cl': slCl,
        'tkb': tkb,
        'is_hl': isHl,
        'enable': enable,
        'hauk': hauk,
        'is_dk': isDk,
        'is_rot': isRot,
        'is_ctdt': isCtdt,
        'is_chctdt': isChctdt,
        'is_kg_lt': isKgLt,
        'thu': thu,
        'tbd': tbd,
        'so_tiet': soTiet,
        'den_gio': denGio,
        'phong': phong,
        'gv': gv,
        'gc_to_hoc': gcToHoc,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DsNhomTo].
  factory DsNhomTo.fromJson(String data) {
    return DsNhomTo.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DsNhomTo] to a JSON string.
  String toJson() => json.encode(toMap());

  DsNhomTo copyWith({
    String? idToHoc,
    String? idMon,
    String? maMon,
    String? tenMon,
    String? soTc,
    int? soTcSo,
    bool? isVuot,
    String? nhomTo,
    String? lop,
    bool? isKdk,
    int? slDk,
    int? slCp,
    int? slCl,
    String? tkb,
    bool? isHl,
    bool? enable,
    bool? hauk,
    bool? isDk,
    bool? isRot,
    bool? isCtdt,
    bool? isChctdt,
    bool? isKgLt,
    int? thu,
    int? tbd,
    int? soTiet,
    String? denGio,
    String? phong,
    String? gv,
    String? gcToHoc,
  }) {
    return DsNhomTo(
      idToHoc: idToHoc ?? this.idToHoc,
      idMon: idMon ?? this.idMon,
      maMon: maMon ?? this.maMon,
      tenMon: tenMon ?? this.tenMon,
      soTc: soTc ?? this.soTc,
      soTcSo: soTcSo ?? this.soTcSo,
      isVuot: isVuot ?? this.isVuot,
      nhomTo: nhomTo ?? this.nhomTo,
      lop: lop ?? this.lop,
      isKdk: isKdk ?? this.isKdk,
      slDk: slDk ?? this.slDk,
      slCp: slCp ?? this.slCp,
      slCl: slCl ?? this.slCl,
      tkb: tkb ?? this.tkb,
      isHl: isHl ?? this.isHl,
      enable: enable ?? this.enable,
      hauk: hauk ?? this.hauk,
      isDk: isDk ?? this.isDk,
      isRot: isRot ?? this.isRot,
      isCtdt: isCtdt ?? this.isCtdt,
      isChctdt: isChctdt ?? this.isChctdt,
      isKgLt: isKgLt ?? this.isKgLt,
      thu: thu ?? this.thu,
      tbd: tbd ?? this.tbd,
      soTiet: soTiet ?? this.soTiet,
      denGio: denGio ?? this.denGio,
      phong: phong ?? this.phong,
      gv: gv ?? this.gv,
      gcToHoc: gcToHoc ?? this.gcToHoc,
    );
  }

  @override
  List<Object?> get props {
    return [
      idToHoc,
      idMon,
      maMon,
      tenMon,
      soTc,
      soTcSo,
      isVuot,
      nhomTo,
      lop,
      isKdk,
      slDk,
      slCp,
      slCl,
      tkb,
      isHl,
      enable,
      hauk,
      isDk,
      isRot,
      isCtdt,
      isChctdt,
      isKgLt,
      thu,
      tbd,
      soTiet,
      denGio,
      phong,
      gv,
      gcToHoc,
    ];
  }
}
