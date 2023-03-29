import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ds_field_an.g.dart';

@JsonSerializable()
class DsFieldAn extends Equatable {
  @JsonKey(name: 'ten_field')
  final String? tenField;
  final bool? enable;

  const DsFieldAn({this.tenField, this.enable});

  factory DsFieldAn.fromJson(Map<String, dynamic> json) {
    return _$DsFieldAnFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DsFieldAnToJson(this);

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
