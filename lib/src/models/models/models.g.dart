// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Models _$ModelsFromJson(Map<String, dynamic> json) => Models(
      models: (json['models'] as List<dynamic>?)
          ?.map((e) => Model.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ModelsToJson(Models instance) => <String, dynamic>{
      'models': instance.models,
    };
