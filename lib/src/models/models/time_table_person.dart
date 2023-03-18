import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'data.dart';

class TimeTablePerson extends Equatable {
  final Data? data;
  final bool? result;
  final int? code;

  const TimeTablePerson({this.data, this.result, this.code});

  factory TimeTablePerson.fromMap(Map<String, dynamic> data) {
    return TimeTablePerson(
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
  /// Parses the string and returns the resulting Json object as [TimeTablePerson].
  factory TimeTablePerson.fromJson(String data) {
    return TimeTablePerson.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [TimeTablePerson] to a JSON string.
  String toJson() => json.encode(toMap());

  TimeTablePerson copyWith({
    Data? data,
    bool? result,
    int? code,
  }) {
    return TimeTablePerson(
      data: data ?? this.data,
      result: result ?? this.result,
      code: code ?? this.code,
    );
  }

  @override
  List<Object?> get props => [data, result, code];
}
