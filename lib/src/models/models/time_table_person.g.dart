// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_table_person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeTablePerson _$TimeTablePersonFromJson(Map<String, dynamic> json) =>
    TimeTablePerson(
      totalItems: json['total_items'] as int?,
      totalPages: json['total_pages'] as int?,
      trongThoiGianDangKy: json['trong_thoi_gian_dang_ky'] as bool?,
      trongThoiGianDuyetKqdk: json['trong_thoi_gian_duyet_kqdk'] as bool?,
      hienCotTachPhieuNopTien: json['hien_cot_tach_phieu_nop_tien'] as bool?,
      addinDuyetKqdk: json['addin_duyet_kqdk'] as bool?,
      hienCotHocPhi: json['hien_cot_hoc_phi'] as bool?,
      hienCotMaLop: json['hien_cot_ma_lop'] as bool?,
      hienThiCotLichThi: json['hien_thi_cot_lich_thi'] as bool?,
      messageTietbd: json['message_tietbd'] as String?,
      isShowTietbd: json['is_show_tietbd'] as bool?,
      messageSoTiet: json['message_so_tiet'] as String?,
      dsNhomTo: (json['ds_nhom_to'] as List<dynamic>?)
          ?.map((e) => DsNhomTo.fromJson(e as Map<String, dynamic>))
          .toList(),
      dsFieldAn: (json['ds_field_an'] as List<dynamic>?)
          ?.map((e) => DsFieldAn.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TimeTablePersonToJson(TimeTablePerson instance) =>
    <String, dynamic>{
      'total_items': instance.totalItems,
      'total_pages': instance.totalPages,
      'trong_thoi_gian_dang_ky': instance.trongThoiGianDangKy,
      'trong_thoi_gian_duyet_kqdk': instance.trongThoiGianDuyetKqdk,
      'hien_cot_tach_phieu_nop_tien': instance.hienCotTachPhieuNopTien,
      'addin_duyet_kqdk': instance.addinDuyetKqdk,
      'hien_cot_hoc_phi': instance.hienCotHocPhi,
      'hien_cot_ma_lop': instance.hienCotMaLop,
      'hien_thi_cot_lich_thi': instance.hienThiCotLichThi,
      'message_tietbd': instance.messageTietbd,
      'is_show_tietbd': instance.isShowTietbd,
      'message_so_tiet': instance.messageSoTiet,
      'ds_nhom_to': instance.dsNhomTo,
      'ds_field_an': instance.dsFieldAn,
    };
