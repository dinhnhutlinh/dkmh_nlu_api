import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'ds_diem_mon_hoc.dart';

class DsLichThi extends Equatable {
  final int? soThuTu;
  final String? kyThi;
  final String? dotThi;
  final String? maMon;
  final String? tenMon;
  final String? maPhong;
  final String? maCoSo;
  final String? ngayThi;
  final String? tietBatDau;
  final String? soTiet;
  final String? gioBatDau;
  final String? soPhut;
  final String? hinhThucThi;
  final String? ghiChuSv;
  final String? ghepThi;
  final String? toThi;
  final String? nhomThi;
  final String? ghepPhong;
  final String? ghiChuHtt;
  final int? siSo;
  final String? xemDssv;
  final String? diaDiemThi;
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

  factory DsLichThi.fromMap(Map<String, dynamic> data) => DsLichThi(
        soThuTu: data['so_thu_tu'] as int?,
        kyThi: data['ky_thi'] as String?,
        dotThi: data['dot_thi'] as String?,
        maMon: data['ma_mon'] as String?,
        tenMon: data['ten_mon'] as String?,
        maPhong: data['ma_phong'] as String?,
        maCoSo: data['ma_co_so'] as String?,
        ngayThi: data['ngay_thi'] as String?,
        tietBatDau: data['tiet_bat_dau'] as String?,
        soTiet: data['so_tiet'] as String?,
        gioBatDau: data['gio_bat_dau'] as String?,
        soPhut: data['so_phut'] as String?,
        hinhThucThi: data['hinh_thuc_thi'] as String?,
        ghiChuSv: data['ghi_chu_sv'] as String?,
        ghepThi: data['ghep_thi'] as String?,
        toThi: data['to_thi'] as String?,
        nhomThi: data['nhom_thi'] as String?,
        ghepPhong: data['ghep_phong'] as String?,
        ghiChuHtt: data['ghi_chu_htt'] as String?,
        siSo: data['si_so'] as int?,
        xemDssv: data['xem_dssv'] as String?,
        diaDiemThi: data['dia_diem_thi'] as String?,
        dsDiemMonHoc: (data['ds_diem_mon_hoc'] as List<dynamic>?)
            ?.map((e) => DsDiemMonHoc.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'so_thu_tu': soThuTu,
        'ky_thi': kyThi,
        'dot_thi': dotThi,
        'ma_mon': maMon,
        'ten_mon': tenMon,
        'ma_phong': maPhong,
        'ma_co_so': maCoSo,
        'ngay_thi': ngayThi,
        'tiet_bat_dau': tietBatDau,
        'so_tiet': soTiet,
        'gio_bat_dau': gioBatDau,
        'so_phut': soPhut,
        'hinh_thuc_thi': hinhThucThi,
        'ghi_chu_sv': ghiChuSv,
        'ghep_thi': ghepThi,
        'to_thi': toThi,
        'nhom_thi': nhomThi,
        'ghep_phong': ghepPhong,
        'ghi_chu_htt': ghiChuHtt,
        'si_so': siSo,
        'xem_dssv': xemDssv,
        'dia_diem_thi': diaDiemThi,
        'ds_diem_mon_hoc': dsDiemMonHoc?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DsLichThi].
  factory DsLichThi.fromJson(String data) {
    return DsLichThi.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DsLichThi] to a JSON string.
  String toJson() => json.encode(toMap());

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
