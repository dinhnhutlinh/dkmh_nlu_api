import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'ds_thoi_khoa_bieu.dart';

part 'ds_tuan_tkb.g.dart';

@JsonSerializable()
class DsTuanTkb extends Equatable {
  @JsonKey(name: 'tuan_hoc_ky')
  final int? tuanHocKy;
  @JsonKey(name: 'tuan_tuyet_doi')
  final int? tuanTuyetDoi;
  @JsonKey(name: 'thong_tin_tuan')
  final String? thongTinTuan;
  @JsonKey(name: 'ngay_bat_dau')
  final String? ngayBatDau;
  @JsonKey(name: 'ngay_ket_thuc')
  final String? ngayKetThuc;
  @JsonKey(name: 'ds_thoi_khoa_bieu')
  final List<DsThoiKhoaBieu>? dsThoiKhoaBieu;
  @JsonKey(name: 'ds_id_thoi_khoa_bieu_trung')
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

  factory DsTuanTkb.fromJson(Map<String, dynamic> json) {
    return _$DsTuanTkbFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DsTuanTkbToJson(this);

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
