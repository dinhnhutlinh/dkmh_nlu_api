import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'data.dart';

class ListTimeTable extends Equatable {
  final Data? data;
  final bool? result;
  final int? code;

  const ListTimeTable({this.data, this.result, this.code});

  factory ListTimeTable.fromMap(Map<String, dynamic> data) => ListTimeTable(
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
  /// Parses the string and returns the resulting Json object as [ListTimeTable].
  factory ListTimeTable.fromJson(String data) {
    return ListTimeTable.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ListTimeTable] to a JSON string.
  String toJson() => json.encode(toMap());

  ListTimeTable copyWith({
    Data? data,
    bool? result,
    int? code,
  }) {
    return ListTimeTable(
      data: data ?? this.data,
      result: result ?? this.result,
      code: code ?? this.code,
    );
  }

  @override
  List<Object?> get props => [data, result, code];
}
