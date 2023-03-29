import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ds_thoi_khoa_bieu.g.dart';

@JsonSerializable()
class DsThoiKhoaBieu extends Equatable {
  @JsonKey(name: 'is_hk_lien_truoc')
  final int? isHkLienTruoc;
  @JsonKey(name: 'thu_kieu_so')
  final int? thuKieuSo;
  @JsonKey(name: 'tiet_bat_dau')
  final int? tietBatDau;
  @JsonKey(name: 'so_tiet')
  final int? soTiet;
  @JsonKey(name: 'ma_mon')
  final String? maMon;
  @JsonKey(name: 'ten_mon')
  final String? tenMon;
  @JsonKey(name: 'so_tin_chi')
  final String? soTinChi;
  @JsonKey(name: 'id_to_hoc')
  final String? idToHoc;
  @JsonKey(name: 'id_tkb')
  final String? idTkb;
  @JsonKey(name: 'id_to_hop')
  final String? idToHop;
  @JsonKey(name: 'ma_nhom')
  final String? maNhom;
  @JsonKey(name: 'ma_to_th')
  final String? maToTh;
  @JsonKey(name: 'ma_to_hop')
  final String? maToHop;
  @JsonKey(name: 'ma_giang_vien')
  final String? maGiangVien;
  @JsonKey(name: 'ten_giang_vien')
  final String? tenGiangVien;
  @JsonKey(name: 'ma_lop')
  final String? maLop;
  @JsonKey(name: 'ma_phong')
  final String? maPhong;
  @JsonKey(name: 'ma_co_so')
  final String? maCoSo;
  @JsonKey(name: 'ngay_hoc')
  final String? ngayHoc;
  @JsonKey(name: 'id_tu_tao')
  final String? idTuTao;
  @JsonKey(name: 'is_file_bai_giang')
  final bool? isFileBaiGiang;
  @JsonKey(name: 'id_sinh_hoat')
  final String? idSinhHoat;

  const DsThoiKhoaBieu({
    this.isHkLienTruoc,
    this.thuKieuSo,
    this.tietBatDau,
    this.soTiet,
    this.maMon,
    this.tenMon,
    this.soTinChi,
    this.idToHoc,
    this.idTkb,
    this.idToHop,
    this.maNhom,
    this.maToTh,
    this.maToHop,
    this.maGiangVien,
    this.tenGiangVien,
    this.maLop,
    this.maPhong,
    this.maCoSo,
    this.ngayHoc,
    this.idTuTao,
    this.isFileBaiGiang,
    this.idSinhHoat,
  });

  factory DsThoiKhoaBieu.fromJson(Map<String, dynamic> json) {
    return _$DsThoiKhoaBieuFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DsThoiKhoaBieuToJson(this);

  DsThoiKhoaBieu copyWith({
    int? isHkLienTruoc,
    int? thuKieuSo,
    int? tietBatDau,
    int? soTiet,
    String? maMon,
    String? tenMon,
    String? soTinChi,
    String? idToHoc,
    String? idTkb,
    String? idToHop,
    String? maNhom,
    String? maToTh,
    String? maToHop,
    String? maGiangVien,
    String? tenGiangVien,
    String? maLop,
    String? maPhong,
    String? maCoSo,
    String? ngayHoc,
    String? idTuTao,
    bool? isFileBaiGiang,
    String? idSinhHoat,
  }) {
    return DsThoiKhoaBieu(
      isHkLienTruoc: isHkLienTruoc ?? this.isHkLienTruoc,
      thuKieuSo: thuKieuSo ?? this.thuKieuSo,
      tietBatDau: tietBatDau ?? this.tietBatDau,
      soTiet: soTiet ?? this.soTiet,
      maMon: maMon ?? this.maMon,
      tenMon: tenMon ?? this.tenMon,
      soTinChi: soTinChi ?? this.soTinChi,
      idToHoc: idToHoc ?? this.idToHoc,
      idTkb: idTkb ?? this.idTkb,
      idToHop: idToHop ?? this.idToHop,
      maNhom: maNhom ?? this.maNhom,
      maToTh: maToTh ?? this.maToTh,
      maToHop: maToHop ?? this.maToHop,
      maGiangVien: maGiangVien ?? this.maGiangVien,
      tenGiangVien: tenGiangVien ?? this.tenGiangVien,
      maLop: maLop ?? this.maLop,
      maPhong: maPhong ?? this.maPhong,
      maCoSo: maCoSo ?? this.maCoSo,
      ngayHoc: ngayHoc ?? this.ngayHoc,
      idTuTao: idTuTao ?? this.idTuTao,
      isFileBaiGiang: isFileBaiGiang ?? this.isFileBaiGiang,
      idSinhHoat: idSinhHoat ?? this.idSinhHoat,
    );
  }

  @override
  List<Object?> get props {
    return [
      isHkLienTruoc,
      thuKieuSo,
      tietBatDau,
      soTiet,
      maMon,
      tenMon,
      soTinChi,
      idToHoc,
      idTkb,
      idToHop,
      maNhom,
      maToTh,
      maToHop,
      maGiangVien,
      tenGiangVien,
      maLop,
      maPhong,
      maCoSo,
      ngayHoc,
      idTuTao,
      isFileBaiGiang,
      idSinhHoat,
    ];
  }
}
