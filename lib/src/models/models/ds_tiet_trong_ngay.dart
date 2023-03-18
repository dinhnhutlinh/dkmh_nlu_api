import 'dart:convert';

import 'package:equatable/equatable.dart';

class DsTietTrongNgay extends Equatable {
  final int? tiet;
  final String? gioBatDau;
  final int? soPhut;
  final int? nhhk;

  const DsTietTrongNgay({
    this.tiet,
    this.gioBatDau,
    this.soPhut,
    this.nhhk,
  });

  factory DsTietTrongNgay.fromMap(Map<String, dynamic> data) {
    return DsTietTrongNgay(
      tiet: data['tiet'] as int?,
      gioBatDau: data['gio_bat_dau'] as String?,
      soPhut: data['so_phut'] as int?,
      nhhk: data['nhhk'] as int?,
    );
  }

  Map<String, dynamic> toMap() => {
        'tiet': tiet,
        'gio_bat_dau': gioBatDau,
        'so_phut': soPhut,
        'nhhk': nhhk,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DsTietTrongNgay].
  factory DsTietTrongNgay.fromJson(String data) {
    return DsTietTrongNgay.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DsTietTrongNgay] to a JSON string.
  String toJson() => json.encode(toMap());

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
