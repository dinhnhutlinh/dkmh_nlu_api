import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ds_hoc_ky.g.dart';

@JsonSerializable()
class DsHocKy extends Equatable {
  @JsonKey(name: 'hoc_ky')
  final int? hocKy;
  @JsonKey(name: 'ten_hoc_ky')
  final String? tenHocKy;
  final int? hiendiensv;

  const DsHocKy({this.hocKy, this.tenHocKy, this.hiendiensv});

  factory DsHocKy.fromJson(Map<String, dynamic> json) {
    return _$DsHocKyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DsHocKyToJson(this);

  DsHocKy copyWith({
    int? hocKy,
    String? tenHocKy,
    int? hiendiensv,
  }) {
    return DsHocKy(
      hocKy: hocKy ?? this.hocKy,
      tenHocKy: tenHocKy ?? this.tenHocKy,
      hiendiensv: hiendiensv ?? this.hiendiensv,
    );
  }

  @override
  List<Object?> get props => [hocKy, tenHocKy, hiendiensv];
}
