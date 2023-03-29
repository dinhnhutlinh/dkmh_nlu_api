import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ds_diem_mon_hoc.g.dart';

@JsonSerializable()
class DsDiemMonHoc extends Equatable {
  @JsonKey(name: 'ten_mon')
  final String? tenMon;
  @JsonKey(name: 'ket_qua')
  final int? ketQua;
  @JsonKey(name: 'hien_thi_ket_qua')
  final bool? hienThiKetQua;
  @JsonKey(name: 'KhoaThi')
  final int? khoaThi;
  @JsonKey(name: 'ds_diem_thanh_phan')
  final List<dynamic>? dsDiemThanhPhan;

  const DsDiemMonHoc({
    this.tenMon,
    this.ketQua,
    this.hienThiKetQua,
    this.khoaThi,
    this.dsDiemThanhPhan,
  });

  factory DsDiemMonHoc.fromJson(Map<String, dynamic> json) {
    return _$DsDiemMonHocFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DsDiemMonHocToJson(this);

  DsDiemMonHoc copyWith({
    String? tenMon,
    int? ketQua,
    bool? hienThiKetQua,
    int? khoaThi,
    List<dynamic>? dsDiemThanhPhan,
  }) {
    return DsDiemMonHoc(
      tenMon: tenMon ?? this.tenMon,
      ketQua: ketQua ?? this.ketQua,
      hienThiKetQua: hienThiKetQua ?? this.hienThiKetQua,
      khoaThi: khoaThi ?? this.khoaThi,
      dsDiemThanhPhan: dsDiemThanhPhan ?? this.dsDiemThanhPhan,
    );
  }

  @override
  List<Object?> get props {
    return [
      tenMon,
      ketQua,
      hienThiKetQua,
      khoaThi,
      dsDiemThanhPhan,
    ];
  }
}
