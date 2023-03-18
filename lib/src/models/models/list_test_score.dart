import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'data.dart';

class ListTestScore extends Equatable {
  final Data? data;
  final bool? result;
  final int? code;

  const ListTestScore({this.data, this.result, this.code});

  factory ListTestScore.fromMap(Map<String, dynamic> data) => ListTestScore(
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
  /// Parses the string and returns the resulting Json object as [ListTestScore].
  factory ListTestScore.fromJson(String data) {
    return ListTestScore.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ListTestScore] to a JSON string.
  String toJson() => json.encode(toMap());

  ListTestScore copyWith({
    Data? data,
    bool? result,
    int? code,
  }) {
    return ListTestScore(
      data: data ?? this.data,
      result: result ?? this.result,
      code: code ?? this.code,
    );
  }

  @override
  List<Object?> get props => [data, result, code];
}
