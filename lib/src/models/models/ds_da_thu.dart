import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ds_da_thu.g.dart';

@JsonSerializable()
class DsDaThu extends Equatable {
  @JsonKey(name: 'noi_dung_thu')
  final String? noiDungThu;
  @JsonKey(name: 'ma_mon')
  final String? maMon;
  @JsonKey(name: 'dien_giai')
  final String? dienGiai;
  @JsonKey(name: 'da_thu')
  final String? daThu;
  @JsonKey(name: 'ngay_thu')
  final String? ngayThu;

  const DsDaThu({
    this.noiDungThu,
    this.maMon,
    this.dienGiai,
    this.daThu,
    this.ngayThu,
  });

  factory DsDaThu.fromJson(Map<String, dynamic> json) {
    return _$DsDaThuFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DsDaThuToJson(this);

  DsDaThu copyWith({
    String? noiDungThu,
    String? maMon,
    String? dienGiai,
    String? daThu,
    String? ngayThu,
  }) {
    return DsDaThu(
      noiDungThu: noiDungThu ?? this.noiDungThu,
      maMon: maMon ?? this.maMon,
      dienGiai: dienGiai ?? this.dienGiai,
      daThu: daThu ?? this.daThu,
      ngayThu: ngayThu ?? this.ngayThu,
    );
  }

  @override
  List<Object?> get props {
    return [
      noiDungThu,
      maMon,
      dienGiai,
      daThu,
      ngayThu,
    ];
  }
}
