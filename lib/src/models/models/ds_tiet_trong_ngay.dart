import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ds_tiet_trong_ngay.g.dart';

@JsonSerializable()
class DsTietTrongNgay extends Equatable {
  final int? tiet;
  @JsonKey(name: 'gio_bat_dau')
  final String? gioBatDau;
  @JsonKey(name: 'so_phut')
  final int? soPhut;
  final int? nhhk;

  const DsTietTrongNgay({
    this.tiet,
    this.gioBatDau,
    this.soPhut,
    this.nhhk,
  });

  factory DsTietTrongNgay.fromJson(Map<String, dynamic> json) {
    return _$DsTietTrongNgayFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DsTietTrongNgayToJson(this);

  DsTietTrongNgay copyWith({
    int? tiet,
    String? gioBatDau,
    int? soPhut,
    int? nhhk,
  }) {
    return DsTietTrongNgay(
      tiet: tiet ?? this.tiet,
      gioBatDau: gioBatDau ?? this.gioBatDau,
      soPhut: soPhut ?? this.soPhut,
      nhhk: nhhk ?? this.nhhk,
    );
  }

  @override
  List<Object?> get props => [tiet, gioBatDau, soPhut, nhhk];
}
