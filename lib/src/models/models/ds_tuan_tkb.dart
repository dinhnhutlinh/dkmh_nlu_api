import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'ds_thoi_khoa_bieu.dart';

class DsTuanTkb extends Equatable {
  final int? tuanHocKy;
  final int? tuanTuyetDoi;
  final String? thongTinTuan;
  final String? ngayBatDau;
  final String? ngayKetThuc;
  final List<DsThoiKhoaBieu>? dsThoiKhoaBieu;
  final List<dynamic>? dsIdThoiKhoaBieuTrung;

  const DsTuanTkb({
    this.tuanHocKy,
    this.tuanTuyetDoi,
    this.thongTinTuan,
    this.ngayBatDau,
    this.ngayKetThuc,
    this.dsThoiKhoaBieu,
    this.dsIdThoiKhoaBieuTrung,
  });

  factory DsTuanTkb.fromMap(Map<String, dynamic> data) => DsTuanTkb(
        tuanHocKy: data['tuan_hoc_ky'] as int?,
        tuanTuyetDoi: data['tuan_tuyet_doi'] as int?,
        thongTinTuan: data['thong_tin_tuan'] as String?,
        ngayBatDau: data['ngay_bat_dau'] as String?,
        ngayKetThuc: data['ngay_ket_thuc'] as String?,
        dsThoiKhoaBieu: (data['ds_thoi_khoa_bieu'] as List<dynamic>?)
            ?.map((e) => DsThoiKhoaBieu.fromMap(e as Map<String, dynamic>))
            .toList(),
        dsIdThoiKhoaBieuTrung:
            data['ds_id_thoi_khoa_bieu_trung'] as List<dynamic>?,
      );

  Map<String, dynamic> toMap() => {
        'tuan_hoc_ky': tuanHocKy,
        'tuan_tuyet_doi': tuanTuyetDoi,
        'thong_tin_tuan': thongTinTuan,
        'ngay_bat_dau': ngayBatDau,
        'ngay_ket_thuc': ngayKetThuc,
        'ds_thoi_khoa_bieu': dsThoiKhoaBieu?.map((e) => e.toMap()).toList(),
        'ds_id_thoi_khoa_bieu_trung': dsIdThoiKhoaBieuTrung,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DsTuanTkb].
  factory DsTuanTkb.fromJson(String data) {
    return DsTuanTkb.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DsTuanTkb] to a JSON string.
  String toJson() => json.encode(toMap());

  DsTuanTkb copyWith({
    int? tuanHocKy,
    int? tuanTuyetDoi,
    String? thongTinTuan,
    String? ngayBatDau,
    String? ngayKetThuc,
    List<DsThoiKhoaBieu>? dsThoiKhoaBieu,
    List<dynamic>? dsIdThoiKhoaBieuTrung,
  }) {
    return DsTuanTkb(
      tuanHocKy: tuanHocKy ?? this.tuanHocKy,
      tuanTuyetDoi: tuanTuyetDoi ?? this.tuanTuyetDoi,
      thongTinTuan: thongTinTuan ?? this.thongTinTuan,
      ngayBatDau: ngayBatDau ?? this.ngayBatDau,
      ngayKetThuc: ngayKetThuc ?? this.ngayKetThuc,
      dsThoiKhoaBieu: dsThoiKhoaBieu ?? this.dsThoiKhoaBieu,
      dsIdThoiKhoaBieuTrung:
          dsIdThoiKhoaBieuTrung ?? this.dsIdThoiKhoaBieuTrung,
    );
  }

  @override
  List<Object?> get props {
    return [
      tuanHocKy,
      tuanTuyetDoi,
      thongTinTuan,
      ngayBatDau,
      ngayKetThuc,
      dsThoiKhoaBieu,
      dsIdThoiKhoaBieuTrung,
    ];
  }
}
