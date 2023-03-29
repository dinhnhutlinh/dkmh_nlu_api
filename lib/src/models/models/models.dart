import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'model.dart';

part 'models.g.dart';

@JsonSerializable()
class Models extends Equatable {
  final List<Model>? models;

  const Models({this.models});

  factory Models.fromJson(Map<String, dynamic> json) {
    return _$ModelsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ModelsToJson(this);

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
