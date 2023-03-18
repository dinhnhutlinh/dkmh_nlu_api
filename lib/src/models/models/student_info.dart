import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'data.dart';

class StudentInfo extends Equatable {
  final Data? data;
  final bool? result;
  final int? code;

  const StudentInfo({this.data, this.result, this.code});

  factory StudentInfo.fromMap(Map<String, dynamic> data) => StudentInfo(
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
  /// Parses the string and returns the resulting Json object as [StudentInfo].
  factory StudentInfo.fromJson(String data) {
    return StudentInfo.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [StudentInfo] to a JSON string.
  String toJson() => json.encode(toMap());

  StudentInfo copyWith({
    Data? data,
    bool? result,
    int? code,
  }) {
    return StudentInfo(
      data: data ?? this.data,
      result: result ?? this.result,
      code: code ?? this.code,
    );
  }

  @override
  List<Object?> get props => [data, result, code];
}
