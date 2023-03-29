// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ds_lich_thi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DsLichThi _$DsLichThiFromJson(Map<String, dynamic> json) => DsLichThi(
      soThuTu: json['so_thu_tu'] as int?,
      kyThi: json['ky_thi'] as String?,
      dotThi: json['dot_thi'] as String?,
      maMon: json['ma_mon'] as String?,
      tenMon: json['ten_mon'] as String?,
      maPhong: json['ma_phong'] as String?,
      maCoSo: json['ma_co_so'] as String?,
      ngayThi: json['ngay_thi'] as String?,
      tietBatDau: json['tiet_bat_dau'] as String?,
      soTiet: json['so_tiet'] as String?,
      gioBatDau: json['gio_bat_dau'] as String?,
      soPhut: json['so_phut'] as String?,
      hinhThucThi: json['hinh_thuc_thi'] as String?,
      ghiChuSv: json['ghi_chu_sv'] as String?,
      ghepThi: json['ghep_thi'] as String?,
      toThi: json['to_thi'] as String?,
      nhomThi: json['nhom_thi'] as String?,
      ghepPhong: json['ghep_phong'] as String?,
      ghiChuHtt: json['ghi_chu_htt'] as String?,
      siSo: json['si_so'] as int?,
      xemDssv: json['xem_dssv'] as String?,
      diaDiemThi: json['dia_diem_thi'] as String?,
      dsDiemMonHoc: (json['ds_diem_mon_hoc'] as List<dynamic>?)
          ?.map((e) => DsDiemMonHoc.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DsLichThiToJson(DsLichThi instance) => <String, dynamic>{
      'so_thu_tu': instance.soThuTu,
      'ky_thi': instance.kyThi,
      'dot_thi': instance.dotThi,
      'ma_mon': instance.maMon,
      'ten_mon': instance.tenMon,
      'ma_phong': instance.maPhong,
      'ma_co_so': instance.maCoSo,
      'ngay_thi': instance.ngayThi,
      'tiet_bat_dau': instance.tietBatDau,
      'so_tiet': instance.soTiet,
      'gio_bat_dau': instance.gioBatDau,
      'so_phut': instance.soPhut,
      'hinh_thuc_thi': instance.hinhThucThi,
      'ghi_chu_sv': instance.ghiChuSv,
      'ghep_thi': instance.ghepThi,
      'to_thi': instance.toThi,
      'nhom_thi': instance.nhomThi,
      'ghep_phong': instance.ghepPhong,
      'ghi_chu_htt': instance.ghiChuHtt,
      'si_so': instance.siSo,
      'xem_dssv': instance.xemDssv,
      'dia_diem_thi': instance.diaDiemThi,
      'ds_diem_mon_hoc': instance.dsDiemMonHoc,
    };
