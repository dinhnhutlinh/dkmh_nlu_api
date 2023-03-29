import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'ds_da_thu.dart';
import 'ds_phai_thu.dart';

part 'detail_tuition_fee.g.dart';

@JsonSerializable()
class DetailTuitionFee extends Equatable {
  @JsonKey(name: 'total_items')
  final int? totalItems;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'is_dhmo')
  final bool? isDhmo;
  @JsonKey(name: 'is_tg_dong_hoc_phi')
  final bool? isTgDongHocPhi;
  @JsonKey(name: 'ds_phai_thu')
  final List<DsPhaiThu>? dsPhaiThu;
  @JsonKey(name: 'ds_da_thu')
  final List<DsDaThu>? dsDaThu;

  const DetailTuitionFee({
    this.totalItems,
    this.totalPages,
    this.isDhmo,
    this.isTgDongHocPhi,
    this.dsPhaiThu,
    this.dsDaThu,
  });

  factory DetailTuitionFee.fromJson(Map<String, dynamic> json) {
    return _$DetailTuitionFeeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DetailTuitionFeeToJson(this);

  DetailTuitionFee copyWith({
    int? totalItems,
    int? totalPages,
    bool? isDhmo,
    bool? isTgDongHocPhi,
    List<DsPhaiThu>? dsPhaiThu,
    List<DsDaThu>? dsDaThu,
  }) {
    return DetailTuitionFee(
      totalItems: totalItems ?? this.totalItems,
      totalPages: totalPages ?? this.totalPages,
      isDhmo: isDhmo ?? this.isDhmo,
      isTgDongHocPhi: isTgDongHocPhi ?? this.isTgDongHocPhi,
      dsPhaiThu: dsPhaiThu ?? this.dsPhaiThu,
      dsDaThu: dsDaThu ?? this.dsDaThu,
    );
  }

  @override
  List<Object?> get props {
    return [
      totalItems,
      totalPages,
      isDhmo,
      isTgDongHocPhi,
      dsPhaiThu,
      dsDaThu,
    ];
  }
}
