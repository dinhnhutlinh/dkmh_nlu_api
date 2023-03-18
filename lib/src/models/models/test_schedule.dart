import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'data.dart';
import 'ds_field_an.dart';

class TestSchedule extends Equatable {
  final Data? data;
  final List<DsFieldAn>? dsFieldAn;
  final bool? result;
  final int? code;

  const TestSchedule({this.data, this.dsFieldAn, this.result, this.code});

  factory TestSchedule.fromMap(Map<String, dynamic> data) => TestSchedule(
        data: data['data'] == null
            ? null
            : Data.fromMap(data['data'] as Map<String, dynamic>),
        dsFieldAn: (data['ds_field_an'] as List<dynamic>?)
            ?.map((e) => DsFieldAn.fromMap(e as Map<String, dynamic>))
            .toList(),
        result: data['result'] as bool?,
        code: data['code'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'data': data?.toMap(),
        'ds_field_an': dsFieldAn?.map((e) => e.toMap()).toList(),
        'result': result,
        'code': code,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [TestSchedule].
  factory TestSchedule.fromJson(String data) {
    return TestSchedule.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [TestSchedule] to a JSON string.
  String toJson() => json.encode(toMap());

  TestSchedule copyWith({
    Data? data,
    List<DsFieldAn>? dsFieldAn,
    bool? result,
    int? code,
  }) {
    return TestSchedule(
      data: data ?? this.data,
      dsFieldAn: dsFieldAn ?? this.dsFieldAn,
      result: result ?? this.result,
      code: code ?? this.code,
    );
  }

  @override
  List<Object?> get props => [data, dsFieldAn, result, code];
}
