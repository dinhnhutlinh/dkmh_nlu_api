// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) => UserInfo(
      accessToken: json['access_token'] as String?,
      tokenType: json['token_type'] as String?,
      expiresIn: json['expires_in'] as int?,
      refreshToken: json['refresh_token'] as String?,
      userName: json['userName'] as String?,
      id: json['id'] as String?,
      logtime: json['logtime'] as String?,
      code: json['code'] as String?,
      result: json['result'] as String?,
      passtype: json['passtype'] as String?,
      name: json['name'] as String?,
      principal: json['principal'] as String?,
      roles: json['roles'] as String?,
      wcf: json['wcf'] as String?,
      issued: json['.issued'] as String?,
      expires: json['.expires'] as String?,
    );

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
      'refresh_token': instance.refreshToken,
      'userName': instance.userName,
      'id': instance.id,
      'logtime': instance.logtime,
      'code': instance.code,
      'result': instance.result,
      'passtype': instance.passtype,
      'name': instance.name,
      'principal': instance.principal,
      'roles': instance.roles,
      'wcf': instance.wcf,
      '.issued': instance.issued,
      '.expires': instance.expires,
    };
