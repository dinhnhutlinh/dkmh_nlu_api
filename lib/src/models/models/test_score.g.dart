// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestScore _$TestScoreFromJson(Map<String, dynamic> json) => TestScore(
      totalItems: json['total_items'] as int?,
      totalPages: json['total_pages'] as int?,
      dsDiemHocky: (json['ds_diem_hocky'] as List<dynamic>?)
          ?.map((e) => DsDiemHocky.fromJson(e as Map<String, dynamic>))
          .toList(),
      dsFieldAnCotDiem: json['ds_field_an_cot_diem'] as List<dynamic>?,
      hienThiKhoaThi: json['hien_thi_khoa_thi'] as bool?,
      hienThiCotDiemTp: json['hien_thi_cot_diem_tp'] as bool?,
      hienThiCotDiemK1: json['hien_thi_cot_diem_k1'] as bool?,
      hienThiCotMhtt: json['hien_thi_cot_mhtt'] as bool?,
      hienThiCotStctt: json['hien_thi_cot_stctt'] as bool?,
      isShowDiemtk10: json['is_show_diemtk10'] as bool?,
      isShowDiemThi: json['is_show_diem_thi'] as bool?,
      mesageDiemtk4: json['mesage_diemtk4'] as String?,
      mesageDiemtkc: json['mesage_diemtkc'] as String?,
    );

Map<String, dynamic> _$TestScoreToJson(TestScore instance) => <String, dynamic>{
      'total_items': instance.totalItems,
      'total_pages': instance.totalPages,
      'ds_diem_hocky': instance.dsDiemHocky,
      'ds_field_an_cot_diem': instance.dsFieldAnCotDiem,
      'hien_thi_khoa_thi': instance.hienThiKhoaThi,
      'hien_thi_cot_diem_tp': instance.hienThiCotDiemTp,
      'hien_thi_cot_diem_k1': instance.hienThiCotDiemK1,
      'hien_thi_cot_mhtt': instance.hienThiCotMhtt,
      'hien_thi_cot_stctt': instance.hienThiCotStctt,
      'is_show_diemtk10': instance.isShowDiemtk10,
      'is_show_diem_thi': instance.isShowDiemThi,
      'mesage_diemtk4': instance.mesageDiemtk4,
      'mesage_diemtkc': instance.mesageDiemtkc,
    };
