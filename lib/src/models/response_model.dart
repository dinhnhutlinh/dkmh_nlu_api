import 'package:json_annotation/json_annotation.dart';

part 'response_model.g.dart';

@JsonSerializable(
    genericArgumentFactories: true,
    explicitToJson: true,
    fieldRename: FieldRename.snake)
class ResponseModel<T> {
  @JsonKey(name: 'code')
  final int? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final T? data;
  final bool? success;

  factory ResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ResponseModelFromJson(json, fromJsonT);

  ResponseModel(this.code, this.message, this.data, this.success);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$ResponseModelToJson(this, toJsonT);
}
