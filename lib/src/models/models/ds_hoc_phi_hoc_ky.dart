import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ds_hoc_phi_hoc_ky.g.dart';

@JsonSerializable()
class DsHocPhiHocKy extends Equatable {
  @JsonKey(name: 'ten_nhom_ct')
  final String? tenNhomCt;
  @JsonKey(name: 'ten_hoc_ky')
  final String? tenHocKy;
  @JsonKey(name: 'hoc_phi')
  final String? hocPhi;
  @JsonKey(name: 'mien_giam')
  final String? mienGiam;
  @JsonKey(name: 'phai_thu')
  final String? phaiThu;
  @JsonKey(name: 'tong_hoc_bong')
  final String? tongHocBong;
  @JsonKey(name: 'da_thu')
  final String? daThu;
  @JsonKey(name: 'con_no')
  final String? conNo;

  const DsHocPhiHocKy({
    this.tenNhomCt,
    this.tenHocKy,
    this.hocPhi,
    this.mienGiam,
    this.phaiThu,
    this.tongHocBong,
    this.daThu,
    this.conNo,
  });

  factory DsHocPhiHocKy.fromJson(Map<String, dynamic> json) {
    return _$DsHocPhiHocKyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DsHocPhiHocKyToJson(this);

  DsHocPhiHocKy copyWith({
    String? tenNhomCt,
    String? tenHocKy,
    String? hocPhi,
    String? mienGiam,
    String? phaiThu,
    String? tongHocBong,
    String? daThu,
    String? conNo,
  }) {
    return DsHocPhiHocKy(
      tenNhomCt: tenNhomCt ?? this.tenNhomCt,
      tenHocKy: tenHocKy ?? this.tenHocKy,
      hocPhi: hocPhi ?? this.hocPhi,
      mienGiam: mienGiam ?? this.mienGiam,
      phaiThu: phaiThu ?? this.phaiThu,
      tongHocBong: tongHocBong ?? this.tongHocBong,
      daThu: daThu ?? this.daThu,
      conNo: conNo ?? this.conNo,
    );
  }

  @override
  List<Object?> get props {
    return [
      tenNhomCt,
      tenHocKy,
      hocPhi,
      mienGiam,
      phaiThu,
      tongHocBong,
      daThu,
      conNo,
    ];
  }
}
