import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'model.dart';

class Models extends Equatable {
  final List<Model>? models;

  const Models({this.models});

  factory Models.fromMap(Map<String, dynamic> data) => Models(
        models: (data['models'] as List<dynamic>?)
            ?.map((e) => Model.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'models': models?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Models].
  factory Models.fromJson(String data) {
    return Models.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Models] to a JSON string.
  String toJson() => json.encode(toMap());

  Models copyWith({
    List<Model>? models,
  }) {
    return Models(
      models: models ?? this.models,
    );
  }

  @override
  List<Object?> get props => [models];
}
