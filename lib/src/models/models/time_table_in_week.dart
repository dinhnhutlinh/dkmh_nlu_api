import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'data.dart';

class TimeTableInWeek extends Equatable {
  final Data? data;
  final bool? result;
  final int? code;

  const TimeTableInWeek({this.data, this.result, this.code});

  factory TimeTableInWeek.fromMap(Map<String, dynamic> data) {
    return TimeTableInWeek(
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
  /// Parses the string and returns the resulting Json object as [TimeTableInWeek].
  factory TimeTableInWeek.fromJson(String data) {
    return TimeTableInWeek.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [TimeTableInWeek] to a JSON string.
  String toJson() => json.encode(toMap());

  TimeTableInWeek copyWith({
    Data? data,
    bool? result,
    int? code,
  }) {
    return TimeTableInWeek(
      data: data ?? this.data,
      result: result ?? this.result,
      code: code ?? this.code,
    );
  }

  @override
  List<Object?> get props => [data, result, code];
}
