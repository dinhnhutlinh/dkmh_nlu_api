// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_tuition_fee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllTuitionFee _$AllTuitionFeeFromJson(Map<String, dynamic> json) =>
    AllTuitionFee(
      totalItems: json['total_items'] as int?,
      totalPages: json['total_pages'] as int?,
      isTinhTong: json['is_tinh_tong'] as bool?,
      isShowHocBong: json['is_show_hoc_bong'] as bool?,
      isTgDongHocPhi: json['is_tg_dong_hoc_phi'] as bool?,
      dsHocPhiHocKy: (json['ds_hoc_phi_hoc_ky'] as List<dynamic>?)
          ?.map((e) => DsHocPhiHocKy.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllTuitionFeeToJson(AllTuitionFee instance) =>
    <String, dynamic>{
      'total_items': instance.totalItems,
      'total_pages': instance.totalPages,
      'is_tinh_tong': instance.isTinhTong,
      'is_show_hoc_bong': instance.isShowHocBong,
      'is_tg_dong_hoc_phi': instance.isTgDongHocPhi,
      'ds_hoc_phi_hoc_ky': instance.dsHocPhiHocKy,
    };
