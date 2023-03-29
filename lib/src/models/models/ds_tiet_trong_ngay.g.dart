// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ds_tiet_trong_ngay.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DsTietTrongNgay _$DsTietTrongNgayFromJson(Map<String, dynamic> json) =>
    DsTietTrongNgay(
      tiet: json['tiet'] as int?,
      gioBatDau: json['gio_bat_dau'] as String?,
      soPhut: json['so_phut'] as int?,
      nhhk: json['nhhk'] as int?,
    );

Map<String, dynamic> _$DsTietTrongNgayToJson(DsTietTrongNgay instance) =>
    <String, dynamic>{
      'tiet': instance.tiet,
      'gio_bat_dau': instance.gioBatDau,
      'so_phut': instance.soPhut,
      'nhhk': instance.nhhk,
    };
