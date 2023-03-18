import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'data.dart';

class Subjects extends Equatable {
  final Data? data;
  final bool? result;
  final int? code;

  const Subjects({this.data, this.result, this.code});

  factory Subjects.fromMap(Map<String, dynamic> data) => Subjects(
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
  /// Parses the string and returns the resulting Json object as [Subjects].
  factory Subjects.fromJson(String data) {
    return Subjects.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Subjects] to a JSON string.
  String toJson() => json.encode(toMap());

  Subjects copyWith({
    Data? data,
    bool? result,
    int? code,
  }) {
    return Subjects(
      data: data ?? this.data,
      result: result ?? this.result,
      code: code ?? this.code,
    );
  }

  @override
  List<Object?> get props => [data, result, code];
}
