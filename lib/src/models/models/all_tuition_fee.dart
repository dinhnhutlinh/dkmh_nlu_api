import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'data.dart';

class AllTuitionFee extends Equatable {
  final Data? data;
  final bool? result;
  final int? code;

  const AllTuitionFee({this.data, this.result, this.code});

  factory AllTuitionFee.fromMap(Map<String, dynamic> data) => AllTuitionFee(
        data: data['data'] == null
            ? null
            : Data.fromMap(data['data'] as Map<String, dynamic>),
        result: data['result'] as bool?,
        code: data['code'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'data': data?.toMap(),
        'result': result,
        'code': code,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [AllTuitionFee].
  factory AllTuitionFee.fromJson(String data) {
    return AllTuitionFee.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [AllTuitionFee] to a JSON string.
  String toJson() => json.encode(toMap());

  AllTuitionFee copyWith({
    Data? data,
    bool? result,
    int? code,
  }) {
    return AllTuitionFee(
      data: data ?? this.data,
      result: result ?? this.result,
      code: code ?? this.code,
    );
  }

  @override
  List<Object?> get props => [data, result, code];
}
