// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ds_phai_thu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DsPhaiThu _$DsPhaiThuFromJson(Map<String, dynamic> json) => DsPhaiThu(
      hocKy: json['hoc_ky'] as int?,
      maMon: json['ma_mon'] as String?,
      dienGiai: json['dien_giai'] as String?,
      soTinChiHp: json['so_tin_chi_hp'] as String?,
      hocPhi: json['hoc_phi'] as String?,
      isHocLai: json['is_hoc_lai'] as bool?,
      mienGiam: json['mien_giam'] as String?,
      phaiThu: json['phai_thu'] as String?,
    );

Map<String, dynamic> _$DsPhaiThuToJson(DsPhaiThu instance) => <String, dynamic>{
      'hoc_ky': instance.hocKy,
      'ma_mon': instance.maMon,
      'dien_giai': instance.dienGiai,
      'so_tin_chi_hp': instance.soTinChiHp,
      'hoc_phi': instance.hocPhi,
      'is_hoc_lai': instance.isHocLai,
      'mien_giam': instance.mienGiam,
      'phai_thu': instance.phaiThu,
    };
