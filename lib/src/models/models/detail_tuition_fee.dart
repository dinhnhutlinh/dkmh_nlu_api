import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'data.dart';

class DetailTuitionFee extends Equatable {
  final Data? data;
  final bool? result;
  final int? code;

  const DetailTuitionFee({this.data, this.result, this.code});

  factory DetailTuitionFee.fromMap(Map<String, dynamic> data) {
    return DetailTuitionFee(
      data: data['data'] == null
          ? null
          : Data.fromMap(data['data'] as Map<String, dynamic>),
      result: data['result'] as bool?,
      code: data['code'] as int?,
    );
  }

  Map<String, dynamic> toMap() => {
        'data': data?.toMap(),
        'result': result,
        'code': code,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DetailTuitionFee].
  factory DetailTuitionFee.fromJson(String data) {
    return DetailTuitionFee.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DetailTuitionFee] to a JSON string.
  String toJson() => json.encode(toMap());

  DetailTuitionFee copyWith({
    Data? data,
    bool? result,
    int? code,
  }) {
    return DetailTuitionFee(
      data: data ?? this.data,
      result: result ?? this.result,
      code: code ?? this.code,
    );
  }

  @override
  List<Object?> get props => [data, result, code];
}