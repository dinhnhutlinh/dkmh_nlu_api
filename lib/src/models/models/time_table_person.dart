import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'ds_field_an.dart';
import 'ds_nhom_to.dart';

part 'time_table_person.g.dart';

@JsonSerializable()
class TimeTablePerson extends Equatable {
  @JsonKey(name: 'total_items')
  final int? totalItems;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'trong_thoi_gian_dang_ky')
  final bool? trongThoiGianDangKy;
  @JsonKey(name: 'trong_thoi_gian_duyet_kqdk')
  final bool? trongThoiGianDuyetKqdk;
  @JsonKey(name: 'hien_cot_tach_phieu_nop_tien')
  final bool? hienCotTachPhieuNopTien;
  @JsonKey(name: 'addin_duyet_kqdk')
  final bool? addinDuyetKqdk;
  @JsonKey(name: 'hien_cot_hoc_phi')
  final bool? hienCotHocPhi;
  @JsonKey(name: 'hien_cot_ma_lop')
  final bool? hienCotMaLop;
  @JsonKey(name: 'hien_thi_cot_lich_thi')
  final bool? hienThiCotLichThi;
  @JsonKey(name: 'message_tietbd')
  final String? messageTietbd;
  @JsonKey(name: 'is_show_tietbd')
  final bool? isShowTietbd;
  @JsonKey(name: 'message_so_tiet')
  final String? messageSoTiet;
  @JsonKey(name: 'ds_nhom_to')
  final List<DsNhomTo>? dsNhomTo;
  @JsonKey(name: 'ds_field_an')
  final List<DsFieldAn>? dsFieldAn;

  const TimeTablePerson({
    this.totalItems,
    this.totalPages,
    this.trongThoiGianDangKy,
    this.trongThoiGianDuyetKqdk,
    this.hienCotTachPhieuNopTien,
    this.addinDuyetKqdk,
    this.hienCotHocPhi,
    this.hienCotMaLop,
    this.hienThiCotLichThi,
    this.messageTietbd,
    this.isShowTietbd,
    this.messageSoTiet,
    this.dsNhomTo,
    this.dsFieldAn,
  });

  factory TimeTablePerson.fromJson(Map<String, dynamic> json) {
    return _$TimeTablePersonFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TimeTablePersonToJson(this);

  TimeTablePerson copyWith({
    int? totalItems,
    int? totalPages,
    bool? trongThoiGianDangKy,
    bool? trongThoiGianDuyetKqdk,
    bool? hienCotTachPhieuNopTien,
    bool? addinDuyetKqdk,
    bool? hienCotHocPhi,
    bool? hienCotMaLop,
    bool? hienThiCotLichThi,
    String? messageTietbd,
    bool? isShowTietbd,
    String? messageSoTiet,
    List<DsNhomTo>? dsNhomTo,
    List<DsFieldAn>? dsFieldAn,
  }) {
    return TimeTablePerson(
      totalItems: totalItems ?? this.totalItems,
      totalPages: totalPages ?? this.totalPages,
      trongThoiGianDangKy: trongThoiGianDangKy ?? this.trongThoiGianDangKy,
      trongThoiGianDuyetKqdk:
          trongThoiGianDuyetKqdk ?? this.trongThoiGianDuyetKqdk,
      hienCotTachPhieuNopTien:
          hienCotTachPhieuNopTien ?? this.hienCotTachPhieuNopTien,
      addinDuyetKqdk: addinDuyetKqdk ?? this.addinDuyetKqdk,
      hienCotHocPhi: hienCotHocPhi ?? this.hienCotHocPhi,
      hienCotMaLop: hienCotMaLop ?? this.hienCotMaLop,
      hienThiCotLichThi: hienThiCotLichThi ?? this.hienThiCotLichThi,
      messageTietbd: messageTietbd ?? this.messageTietbd,
      isShowTietbd: isShowTietbd ?? this.isShowTietbd,
      messageSoTiet: messageSoTiet ?? this.messageSoTiet,
      dsNhomTo: dsNhomTo ?? this.dsNhomTo,
      dsFieldAn: dsFieldAn ?? this.dsFieldAn,
    );
  }

  @override
  List<Object?> get props {
    return [
      totalItems,
      totalPages,
      trongThoiGianDangKy,
      trongThoiGianDuyetKqdk,
      hienCotTachPhieuNopTien,
      addinDuyetKqdk,
      hienCotHocPhi,
      hienCotMaLop,
      hienThiCotLichThi,
      messageTietbd,
      isShowTietbd,
      messageSoTiet,
      dsNhomTo,
      dsFieldAn,
    ];
  }
}
