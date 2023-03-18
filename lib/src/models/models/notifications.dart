import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'data.dart';

class Notifications extends Equatable {
  final Data? data;
  final bool? result;
  final int? code;

  const Notifications({this.data, this.result, this.code});

  factory Notifications.fromMap(Map<String, dynamic> data) => Notifications(
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
  /// Parses the string and returns the resulting Json object as [Notifications].
  factory Notifications.fromJson(String data) {
    return Notifications.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Notifications] to a JSON string.
  String toJson() => json.encode(toMap());

  Notifications copyWith({
    Data? data,
    bool? result,
    int? code,
  }) {
    return Notifications(
      data: data ?? this.data,
      result: result ?? this.result,
      code: code ?? this.code,
    );
  }

  @override
  List<Object?> get props => [data, result, code];
}
