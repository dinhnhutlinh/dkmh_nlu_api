import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'data.dart';

class TestScore extends Equatable {
  final Data? data;
  final bool? result;
  final int? code;

  const TestScore({this.data, this.result, this.code});

  factory TestScore.fromMap(Map<String, dynamic> data) => TestScore(
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
  /// Parses the string and returns the resulting Json object as [TestScore].
  factory TestScore.fromJson(String data) {
    return TestScore.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [TestScore] to a JSON string.
  String toJson() => json.encode(toMap());

  TestScore copyWith({
    Data? data,
    bool? result,
    int? code,
  }) {
    return TestScore(
      data: data ?? this.data,
      result: result ?? this.result,
      code: code ?? this.code,
    );
  }

  @override
  List<Object?> get props => [data, result, code];
}
