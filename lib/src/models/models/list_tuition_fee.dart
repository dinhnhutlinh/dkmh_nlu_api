import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'data.dart';

class ListTuitionFee extends Equatable {
  final Data? data;
  final bool? result;
  final int? code;

  const ListTuitionFee({this.data, this.result, this.code});

  factory ListTuitionFee.fromMap(Map<String, dynamic> data) {
    return ListTuitionFee(
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
  /// Parses the string and returns the resulting Json object as [ListTuitionFee].
  factory ListTuitionFee.fromJson(String data) {
    return ListTuitionFee.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ListTuitionFee] to a JSON string.
  String toJson() => json.encode(toMap());

  ListTuitionFee copyWith({
    Data? data,
    bool? result,
    int? code,
  }) {
    return ListTuitionFee(
      data: data ?? this.data,
      result: result ?? this.result,
      code: code ?? this.code,
    );
  }

  @override
  List<Object?> get props => [data, result, code];
}
