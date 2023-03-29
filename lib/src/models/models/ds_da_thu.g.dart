// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ds_da_thu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DsDaThu _$DsDaThuFromJson(Map<String, dynamic> json) => DsDaThu(
      noiDungThu: json['noi_dung_thu'] as String?,
      maMon: json['ma_mon'] as String?,
      dienGiai: json['dien_giai'] as String?,
      daThu: json['da_thu'] as String?,
      ngayThu: json['ngay_thu'] as String?,
    );

Map<String, dynamic> _$DsDaThuToJson(DsDaThu instance) => <String, dynamic>{
      'noi_dung_thu': instance.noiDungThu,
      'ma_mon': instance.maMon,
      'dien_giai': instance.dienGiai,
      'da_thu': instance.daThu,
      'ngay_thu': instance.ngayThu,
    };
