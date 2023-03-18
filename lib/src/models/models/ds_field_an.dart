import 'dart:convert';

import 'package:equatable/equatable.dart';

class DsFieldAn extends Equatable {
  final String? tenField;
  final bool? enable;

  const DsFieldAn({this.tenField, this.enable});

  factory DsFieldAn.fromMap(Map<String, dynamic> data) => DsFieldAn(
        tenField: data['ten_field'] as String?,
        enable: data['enable'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'ten_field': tenField,
        'enable': enable,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DsFieldAn].
  factory DsFieldAn.fromJson(String data) {
    return DsFieldAn.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DsFieldAn] to a JSON string.
  String toJson() => json.encode(toMap());

  DsFieldAn copyWith({
    String? tenField,
    bool? enable,
  }) {
    return DsFieldAn(
      tenField: tenField ?? this.tenField,
      enable: enable ?? this.enable,
    );
  }

  @override
  List<Object?> get props => [tenField, enable];
}
