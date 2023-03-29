import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'ds_hoc_phi_hoc_ky.dart';

part 'all_tuition_fee.g.dart';

@JsonSerializable()
class AllTuitionFee extends Equatable {
  @JsonKey(name: 'total_items')
  final int? totalItems;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'is_tinh_tong')
  final bool? isTinhTong;
  @JsonKey(name: 'is_show_hoc_bong')
  final bool? isShowHocBong;
  @JsonKey(name: 'is_tg_dong_hoc_phi')
  final bool? isTgDongHocPhi;
  @JsonKey(name: 'ds_hoc_phi_hoc_ky')
  final List<DsHocPhiHocKy>? dsHocPhiHocKy;

  const AllTuitionFee({
    this.totalItems,
    this.totalPages,
    this.isTinhTong,
    this.isShowHocBong,
    this.isTgDongHocPhi,
    this.dsHocPhiHocKy,
  });

  factory AllTuitionFee.fromJson(Map<String, dynamic> json) {
    return _$AllTuitionFeeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AllTuitionFeeToJson(this);

  AllTuitionFee copyWith({
    int? totalItems,
    int? totalPages,
    bool? isTinhTong,
    bool? isShowHocBong,
    bool? isTgDongHocPhi,
    List<DsHocPhiHocKy>? dsHocPhiHocKy,
  }) {
    return AllTuitionFee(
      totalItems: totalItems ?? this.totalItems,
      totalPages: totalPages ?? this.totalPages,
      isTinhTong: isTinhTong ?? this.isTinhTong,
      isShowHocBong: isShowHocBong ?? this.isShowHocBong,
      isTgDongHocPhi: isTgDongHocPhi ?? this.isTgDongHocPhi,
      dsHocPhiHocKy: dsHocPhiHocKy ?? this.dsHocPhiHocKy,
    );
  }

  @override
  List<Object?> get props {
    return [
      totalItems,
      totalPages,
      isTinhTong,
      isShowHocBong,
      isTgDongHocPhi,
      dsHocPhiHocKy,
    ];
  }
}
