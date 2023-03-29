import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ds_phai_thu.g.dart';

@JsonSerializable()
class DsPhaiThu extends Equatable {
  @JsonKey(name: 'hoc_ky')
  final int? hocKy;
  @JsonKey(name: 'ma_mon')
  final String? maMon;
  @JsonKey(name: 'dien_giai')
  final String? dienGiai;
  @JsonKey(name: 'so_tin_chi_hp')
  final String? soTinChiHp;
  @JsonKey(name: 'hoc_phi')
  final String? hocPhi;
  @JsonKey(name: 'is_hoc_lai')
  final bool? isHocLai;
  @JsonKey(name: 'mien_giam')
  final String? mienGiam;
  @JsonKey(name: 'phai_thu')
  final String? phaiThu;

  const DsPhaiThu({
    this.hocKy,
    this.maMon,
    this.dienGiai,
    this.soTinChiHp,
    this.hocPhi,
    this.isHocLai,
    this.mienGiam,
    this.phaiThu,
  });

  factory DsPhaiThu.fromJson(Map<String, dynamic> json) {
    return _$DsPhaiThuFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DsPhaiThuToJson(this);

  DsPhaiThu copyWith({
    int? hocKy,
    String? maMon,
    String? dienGiai,
    String? soTinChiHp,
    String? hocPhi,
    bool? isHocLai,
    String? mienGiam,
    String? phaiThu,
  }) {
    return DsPhaiThu(
      hocKy: hocKy ?? this.hocKy,
      maMon: maMon ?? this.maMon,
      dienGiai: dienGiai ?? this.dienGiai,
      soTinChiHp: soTinChiHp ?? this.soTinChiHp,
      hocPhi: hocPhi ?? this.hocPhi,
      isHocLai: isHocLai ?? this.isHocLai,
      mienGiam: mienGiam ?? this.mienGiam,
      phaiThu: phaiThu ?? this.phaiThu,
    );
  }

  @override
  List<Object?> get props {
    return [
      hocKy,
      maMon,
      dienGiai,
      soTinChiHp,
      hocPhi,
      isHocLai,
      mienGiam,
      phaiThu,
    ];
  }
}
