import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'data.dart';

class ListTimeTableSemester extends Equatable {
  final Data? data;
  final bool? result;
  final int? code;

  const ListTimeTableSemester({this.data, this.result, this.code});

  factory ListTimeTableSemester.fromMap(Map<String, dynamic> data) {
    return ListTimeTableSemester(
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
  /// Parses the string and returns the resulting Json object as [ListTimeTableSemester].
  factory ListTimeTableSemester.fromJson(String data) {
    return ListTimeTableSemester.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ListTimeTableSemester] to a JSON string.
  String toJson() => json.encode(toMap());

  ListTimeTableSemester copyWith({
    Data? data,
    bool? result,
    int? code,
  }) {
    return ListTimeTableSemester(
      data: data ?? this.data,
      result: result ?? this.result,
      code: code ?? this.code,
    );
  }

  @override
  List<Object?> get props => [data, result, code];
}
