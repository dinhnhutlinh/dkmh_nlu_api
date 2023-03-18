import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'data.dart';

class TimeTableByPersion extends Equatable {
  final Data? data;
  final bool? result;
  final int? code;

  const TimeTableByPersion({this.data, this.result, this.code});

  factory TimeTableByPersion.fromMap(Map<String, dynamic> data) {
    return TimeTableByPersion(
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
  /// Parses the string and returns the resulting Json object as [TimeTableByPersion].
  factory TimeTableByPersion.fromJson(String data) {
    return TimeTableByPersion.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [TimeTableByPersion] to a JSON string.
  String toJson() => json.encode(toMap());

  TimeTableByPersion copyWith({
    Data? data,
    bool? result,
    int? code,
  }) {
    return TimeTableByPersion(
      data: data ?? this.data,
      result: result ?? this.result,
      code: code ?? this.code,
    );
  }

  @override
  List<Object?> get props => [data, result, code];
}
