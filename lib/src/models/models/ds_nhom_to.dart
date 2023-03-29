import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ds_nhom_to.g.dart';

@JsonSerializable()
class DsNhomTo extends Equatable {
  @JsonKey(name: 'id_to_hoc')
  final String? idToHoc;
  @JsonKey(name: 'id_mon')
  final String? idMon;
  @JsonKey(name: 'ma_mon')
  final String? maMon;
  @JsonKey(name: 'ten_mon')
  final String? tenMon;
  @JsonKey(name: 'so_tc')
  final String? soTc;
  @JsonKey(name: 'so_tc_so')
  final int? soTcSo;
  @JsonKey(name: 'is_vuot')
  final bool? isVuot;
  @JsonKey(name: 'nhom_to')
  final String? nhomTo;
  final String? lop;
  @JsonKey(name: 'is_kdk')
  final bool? isKdk;
  @JsonKey(name: 'sl_dk')
  final int? slDk;
  @JsonKey(name: 'sl_cp')
  final int? slCp;
  @JsonKey(name: 'sl_cl')
  final int? slCl;
  final String? tkb;
  @JsonKey(name: 'is_hl')
  final bool? isHl;
  final bool? enable;
  final bool? hauk;
  @JsonKey(name: 'is_dk')
  final bool? isDk;
  @JsonKey(name: 'is_rot')
  final bool? isRot;
  @JsonKey(name: 'is_ctdt')
  final bool? isCtdt;
  @JsonKey(name: 'is_chctdt')
  final bool? isChctdt;
  @JsonKey(name: 'is_kg_lt')
  final bool? isKgLt;
  final int? thu;
  final int? tbd;
  @JsonKey(name: 'so_tiet')
  final int? soTiet;
  @JsonKey(name: 'den_gio')
  final String? denGio;
  final String? phong;
  final String? gv;
  @JsonKey(name: 'gc_to_hoc')
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

  factory DsNhomTo.fromJson(Map<String, dynamic> json) {
    return _$DsNhomToFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DsNhomToToJson(this);

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
