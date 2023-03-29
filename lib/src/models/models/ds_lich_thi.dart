import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'ds_diem_mon_hoc.dart';

part 'ds_lich_thi.g.dart';

@JsonSerializable()
class DsLichThi extends Equatable {
  @JsonKey(name: 'so_thu_tu')
  final int? soThuTu;
  @JsonKey(name: 'ky_thi')
  final String? kyThi;
  @JsonKey(name: 'dot_thi')
  final String? dotThi;
  @JsonKey(name: 'ma_mon')
  final String? maMon;
  @JsonKey(name: 'ten_mon')
  final String? tenMon;
  @JsonKey(name: 'ma_phong')
  final String? maPhong;
  @JsonKey(name: 'ma_co_so')
  final String? maCoSo;
  @JsonKey(name: 'ngay_thi')
  final String? ngayThi;
  @JsonKey(name: 'tiet_bat_dau')
  final String? tietBatDau;
  @JsonKey(name: 'so_tiet')
  final String? soTiet;
  @JsonKey(name: 'gio_bat_dau')
  final String? gioBatDau;
  @JsonKey(name: 'so_phut')
  final String? soPhut;
  @JsonKey(name: 'hinh_thuc_thi')
  final String? hinhThucThi;
  @JsonKey(name: 'ghi_chu_sv')
  final String? ghiChuSv;
  @JsonKey(name: 'ghep_thi')
  final String? ghepThi;
  @JsonKey(name: 'to_thi')
  final String? toThi;
  @JsonKey(name: 'nhom_thi')
  final String? nhomThi;
  @JsonKey(name: 'ghep_phong')
  final String? ghepPhong;
  @JsonKey(name: 'ghi_chu_htt')
  final String? ghiChuHtt;
  @JsonKey(name: 'si_so')
  final int? siSo;
  @JsonKey(name: 'xem_dssv')
  final String? xemDssv;
  @JsonKey(name: 'dia_diem_thi')
  final String? diaDiemThi;
  @JsonKey(name: 'ds_diem_mon_hoc')
  final List<DsDiemMonHoc>? dsDiemMonHoc;

  const DsLichThi({
    this.soThuTu,
    this.kyThi,
    this.dotThi,
    this.maMon,
    this.tenMon,
    this.maPhong,
    this.maCoSo,
    this.ngayThi,
    this.tietBatDau,
    this.soTiet,
    this.gioBatDau,
    this.soPhut,
    this.hinhThucThi,
    this.ghiChuSv,
    this.ghepThi,
    this.toThi,
    this.nhomThi,
    this.ghepPhong,
    this.ghiChuHtt,
    this.siSo,
    this.xemDssv,
    this.diaDiemThi,
    this.dsDiemMonHoc,
  });

  factory DsLichThi.fromJson(Map<String, dynamic> json) {
    return _$DsLichThiFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DsLichThiToJson(this);

  DsLichThi copyWith({
    int? soThuTu,
    String? kyThi,
    String? dotThi,
    String? maMon,
    String? tenMon,
    String? maPhong,
    String? maCoSo,
    String? ngayThi,
    String? tietBatDau,
    String? soTiet,
    String? gioBatDau,
    String? soPhut,
    String? hinhThucThi,
    String? ghiChuSv,
    String? ghepThi,
    String? toThi,
    String? nhomThi,
    String? ghepPhong,
    String? ghiChuHtt,
    int? siSo,
    String? xemDssv,
    String? diaDiemThi,
    List<DsDiemMonHoc>? dsDiemMonHoc,
  }) {
    return DsLichThi(
      soThuTu: soThuTu ?? this.soThuTu,
      kyThi: kyThi ?? this.kyThi,
      dotThi: dotThi ?? this.dotThi,
      maMon: maMon ?? this.maMon,
      tenMon: tenMon ?? this.tenMon,
      maPhong: maPhong ?? this.maPhong,
      maCoSo: maCoSo ?? this.maCoSo,
      ngayThi: ngayThi ?? this.ngayThi,
      tietBatDau: tietBatDau ?? this.tietBatDau,
      soTiet: soTiet ?? this.soTiet,
      gioBatDau: gioBatDau ?? this.gioBatDau,
      soPhut: soPhut ?? this.soPhut,
      hinhThucThi: hinhThucThi ?? this.hinhThucThi,
      ghiChuSv: ghiChuSv ?? this.ghiChuSv,
      ghepThi: ghepThi ?? this.ghepThi,
      toThi: toThi ?? this.toThi,
      nhomThi: nhomThi ?? this.nhomThi,
      ghepPhong: ghepPhong ?? this.ghepPhong,
      ghiChuHtt: ghiChuHtt ?? this.ghiChuHtt,
      siSo: siSo ?? this.siSo,
      xemDssv: xemDssv ?? this.xemDssv,
      diaDiemThi: diaDiemThi ?? this.diaDiemThi,
      dsDiemMonHoc: dsDiemMonHoc ?? this.dsDiemMonHoc,
    );
  }

  @override
  List<Object?> get props {
    return [
      soThuTu,
      kyThi,
      dotThi,
      maMon,
      tenMon,
      maPhong,
      maCoSo,
      ngayThi,
      tietBatDau,
      soTiet,
      gioBatDau,
      soPhut,
      hinhThucThi,
      ghiChuSv,
      ghepThi,
      toThi,
      nhomThi,
      ghepPhong,
      ghiChuHtt,
      siSo,
      xemDssv,
      diaDiemThi,
      dsDiemMonHoc,
    ];
  }
}
