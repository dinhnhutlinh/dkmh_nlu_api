import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'data.dart';

class OptionsTimeTable extends Equatable {
  final Data? data;
  final bool? result;
  final int? code;

  const OptionsTimeTable({this.data, this.result, this.code});

  factory OptionsTimeTable.fromMap(Map<String, dynamic> data) {
    return OptionsTimeTable(
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
  /// Parses the string and returns the resulting Json object as [OptionsTimeTable].
  factory OptionsTimeTable.fromJson(String data) {
    return OptionsTimeTable.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [OptionsTimeTable] to a JSON string.
  String toJson() => json.encode(toMap());

  OptionsTimeTable copyWith({
    Data? data,
    bool? result,
    int? code,
  }) {
    return OptionsTimeTable(
      data: data ?? this.data,
      result: result ?? this.result,
      code: code ?? this.code,
    );
  }

  @override
  List<Object?> get props => [data, result, code];
}
