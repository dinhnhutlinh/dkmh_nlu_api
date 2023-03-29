import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'ds_diem_hocky.dart';

part 'test_score.g.dart';

@JsonSerializable()
class TestScore extends Equatable {
  @JsonKey(name: 'total_items')
  final int? totalItems;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'ds_diem_hocky')
  final List<DsDiemHocky>? dsDiemHocky;
  @JsonKey(name: 'ds_field_an_cot_diem')
  final List<dynamic>? dsFieldAnCotDiem;
  @JsonKey(name: 'hien_thi_khoa_thi')
  final bool? hienThiKhoaThi;
  @JsonKey(name: 'hien_thi_cot_diem_tp')
  final bool? hienThiCotDiemTp;
  @JsonKey(name: 'hien_thi_cot_diem_k1')
  final bool? hienThiCotDiemK1;
  @JsonKey(name: 'hien_thi_cot_mhtt')
  final bool? hienThiCotMhtt;
  @JsonKey(name: 'hien_thi_cot_stctt')
  final bool? hienThiCotStctt;
  @JsonKey(name: 'is_show_diemtk10')
  final bool? isShowDiemtk10;
  @JsonKey(name: 'is_show_diem_thi')
  final bool? isShowDiemThi;
  @JsonKey(name: 'mesage_diemtk4')
  final String? mesageDiemtk4;
  @JsonKey(name: 'mesage_diemtkc')
  final String? mesageDiemtkc;

  const TestScore({
    this.totalItems,
    this.totalPages,
    this.dsDiemHocky,
    this.dsFieldAnCotDiem,
    this.hienThiKhoaThi,
    this.hienThiCotDiemTp,
    this.hienThiCotDiemK1,
    this.hienThiCotMhtt,
    this.hienThiCotStctt,
    this.isShowDiemtk10,
    this.isShowDiemThi,
    this.mesageDiemtk4,
    this.mesageDiemtkc,
  });

  factory TestScore.fromJson(Map<String, dynamic> json) {
    return _$TestScoreFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TestScoreToJson(this);

  TestScore copyWith({
    int? totalItems,
    int? totalPages,
    List<DsDiemHocky>? dsDiemHocky,
    List<dynamic>? dsFieldAnCotDiem,
    bool? hienThiKhoaThi,
    bool? hienThiCotDiemTp,
    bool? hienThiCotDiemK1,
    bool? hienThiCotMhtt,
    bool? hienThiCotStctt,
    bool? isShowDiemtk10,
    bool? isShowDiemThi,
    String? mesageDiemtk4,
    String? mesageDiemtkc,
  }) {
    return TestScore(
      totalItems: totalItems ?? this.totalItems,
      totalPages: totalPages ?? this.totalPages,
      dsDiemHocky: dsDiemHocky ?? this.dsDiemHocky,
      dsFieldAnCotDiem: dsFieldAnCotDiem ?? this.dsFieldAnCotDiem,
      hienThiKhoaThi: hienThiKhoaThi ?? this.hienThiKhoaThi,
      hienThiCotDiemTp: hienThiCotDiemTp ?? this.hienThiCotDiemTp,
      hienThiCotDiemK1: hienThiCotDiemK1 ?? this.hienThiCotDiemK1,
      hienThiCotMhtt: hienThiCotMhtt ?? this.hienThiCotMhtt,
      hienThiCotStctt: hienThiCotStctt ?? this.hienThiCotStctt,
      isShowDiemtk10: isShowDiemtk10 ?? this.isShowDiemtk10,
      isShowDiemThi: isShowDiemThi ?? this.isShowDiemThi,
      mesageDiemtk4: mesageDiemtk4 ?? this.mesageDiemtk4,
      mesageDiemtkc: mesageDiemtkc ?? this.mesageDiemtkc,
    );
  }

  @override
  List<Object?> get props {
    return [
      totalItems,
      totalPages,
      dsDiemHocky,
      dsFieldAnCotDiem,
      hienThiKhoaThi,
      hienThiCotDiemTp,
      hienThiCotDiemK1,
      hienThiCotMhtt,
      hienThiCotStctt,
      isShowDiemtk10,
      isShowDiemThi,
      mesageDiemtk4,
      mesageDiemtkc,
    ];
  }
}
