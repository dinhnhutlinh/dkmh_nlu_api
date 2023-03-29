import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ds_du_lieu.g.dart';

@JsonSerializable()
class DsDuLieu extends Equatable {
  @JsonKey(name: 'id_du_lieu')
  final String? idDuLieu;
  @JsonKey(name: 'ma_du_lieu')
  final String? maDuLieu;
  @JsonKey(name: 'ten_du_lieu')
  final String? tenDuLieu;

  const DsDuLieu({this.idDuLieu, this.maDuLieu, this.tenDuLieu});

  factory DsDuLieu.fromJson(Map<String, dynamic> json) {
    return _$DsDuLieuFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DsDuLieuToJson(this);

  DsDuLieu copyWith({
    String? idDuLieu,
    String? maDuLieu,
    String? tenDuLieu,
  }) {
    return DsDuLieu(
      idDuLieu: idDuLieu ?? this.idDuLieu,
      maDuLieu: maDuLieu ?? this.maDuLieu,
      tenDuLieu: tenDuLieu ?? this.tenDuLieu,
    );
  }

  @override
  List<Object?> get props => [idDuLieu, maDuLieu, tenDuLieu];
}
