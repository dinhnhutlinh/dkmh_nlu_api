import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'ds_tiet_trong_ngay.dart';
import 'ds_tuan_tkb.dart';

part 'time_table_by_persion.g.dart';

@JsonSerializable()
class TimeTableByPersion extends Equatable {
  @JsonKey(name: 'total_items')
  final int? totalItems;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'ds_tiet_trong_ngay')
  final List<DsTietTrongNgay>? dsTietTrongNgay;
  @JsonKey(name: 'ds_tuan_tkb')
  final List<DsTuanTkb>? dsTuanTkb;
  @JsonKey(name: 'is_duoc_diem_danh')
  final bool? isDuocDiemDanh;
  @JsonKey(name: 'is_duoc_dk_nghi_day')
  final bool? isDuocDkNghiDay;
  @JsonKey(name: 'is_quan_ly_hoc_lieu')
  final bool? isQuanLyHocLieu;
  @JsonKey(name: 'is_show_tiet')
  final bool? isShowTiet;

  const TimeTableByPersion({
    this.totalItems,
    this.totalPages,
    this.dsTietTrongNgay,
    this.dsTuanTkb,
    this.isDuocDiemDanh,
    this.isDuocDkNghiDay,
    this.isQuanLyHocLieu,
    this.isShowTiet,
  });

  factory TimeTableByPersion.fromJson(Map<String, dynamic> json) {
    return _$TimeTableByPersionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TimeTableByPersionToJson(this);

  TimeTableByPersion copyWith({
    int? totalItems,
    int? totalPages,
    List<DsTietTrongNgay>? dsTietTrongNgay,
    List<DsTuanTkb>? dsTuanTkb,
    bool? isDuocDiemDanh,
    bool? isDuocDkNghiDay,
    bool? isQuanLyHocLieu,
    bool? isShowTiet,
  }) {
    return TimeTableByPersion(
      totalItems: totalItems ?? this.totalItems,
      totalPages: totalPages ?? this.totalPages,
      dsTietTrongNgay: dsTietTrongNgay ?? this.dsTietTrongNgay,
      dsTuanTkb: dsTuanTkb ?? this.dsTuanTkb,
      isDuocDiemDanh: isDuocDiemDanh ?? this.isDuocDiemDanh,
      isDuocDkNghiDay: isDuocDkNghiDay ?? this.isDuocDkNghiDay,
      isQuanLyHocLieu: isQuanLyHocLieu ?? this.isQuanLyHocLieu,
      isShowTiet: isShowTiet ?? this.isShowTiet,
    );
  }

  @override
  List<Object?> get props {
    return [
      totalItems,
      totalPages,
      dsTietTrongNgay,
      dsTuanTkb,
      isDuocDiemDanh,
      isDuocDkNghiDay,
      isQuanLyHocLieu,
      isShowTiet,
    ];
  }
}
