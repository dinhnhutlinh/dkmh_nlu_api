// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_tuition_fee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailTuitionFee _$DetailTuitionFeeFromJson(Map<String, dynamic> json) =>
    DetailTuitionFee(
      totalItems: json['total_items'] as int?,
      totalPages: json['total_pages'] as int?,
      isDhmo: json['is_dhmo'] as bool?,
      isTgDongHocPhi: json['is_tg_dong_hoc_phi'] as bool?,
      dsPhaiThu: (json['ds_phai_thu'] as List<dynamic>?)
          ?.map((e) => DsPhaiThu.fromJson(e as Map<String, dynamic>))
          .toList(),
      dsDaThu: (json['ds_da_thu'] as List<dynamic>?)
          ?.map((e) => DsDaThu.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DetailTuitionFeeToJson(DetailTuitionFee instance) =>
    <String, dynamic>{
      'total_items': instance.totalItems,
      'total_pages': instance.totalPages,
      'is_dhmo': instance.isDhmo,
      'is_tg_dong_hoc_phi': instance.isTgDongHocPhi,
      'ds_phai_thu': instance.dsPhaiThu,
      'ds_da_thu': instance.dsDaThu,
    };
