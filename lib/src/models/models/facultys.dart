import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'data.dart';

class Facultys extends Equatable {
  final Data? data;
  final bool? result;
  final int? code;

  const Facultys({this.data, this.result, this.code});

  factory Facultys.fromMap(Map<String, dynamic> data) => Facultys(
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
  /// Parses the string and returns the resulting Json object as [Facultys].
  factory Facultys.fromJson(String data) {
    return Facultys.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Facultys] to a JSON string.
  String toJson() => json.encode(toMap());

  Facultys copyWith({
    Data? data,
    bool? result,
    int? code,
  }) {
    return Facultys(
      data: data ?? this.data,
      result: result ?? this.result,
      code: code ?? this.code,
    );
  }

  @override
  List<Object?> get props => [data, result, code];
}
