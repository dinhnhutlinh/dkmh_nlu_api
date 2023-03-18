import 'dart:convert';

import 'package:equatable/equatable.dart';

class UserInfo extends Equatable {
  final String? accessToken;
  final String? tokenType;
  final int? expiresIn;
  final String? refreshToken;
  final String? userName;
  final String? id;
  final String? logtime;
  final String? code;
  final String? result;
  final String? passtype;
  final String? name;
  final String? principal;
  final String? roles;
  final String? wcf;
  final String? issued;
  final String? expires;

  const UserInfo({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
    this.refreshToken,
    this.userName,
    this.id,
    this.logtime,
    this.code,
    this.result,
    this.passtype,
    this.name,
    this.principal,
    this.roles,
    this.wcf,
    this.issued,
    this.expires,
  });

  factory UserInfo.fromMap(Map<String, dynamic> data) => UserInfo(
        accessToken: data['access_token'] as String?,
        tokenType: data['token_type'] as String?,
        expiresIn: data['expires_in'] as int?,
        refreshToken: data['refresh_token'] as String?,
        userName: data['userName'] as String?,
        id: data['id'] as String?,
        logtime: data['logtime'] as String?,
        code: data['code'] as String?,
        result: data['result'] as String?,
        passtype: data['passtype'] as String?,
        name: data['name'] as String?,
        principal: data['principal'] as String?,
        roles: data['roles'] as String?,
        wcf: data['wcf'] as String?,
        issued: data['.issued'] as String?,
        expires: data['.expires'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'access_token': accessToken,
        'token_type': tokenType,
        'expires_in': expiresIn,
        'refresh_token': refreshToken,
        'userName': userName,
        'id': id,
        'logtime': logtime,
        'code': code,
        'result': result,
        'passtype': passtype,
        'name': name,
        'principal': principal,
        'roles': roles,
        'wcf': wcf,
        '.issued': issued,
        '.expires': expires,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [UserInfo].
  factory UserInfo.fromJson(String data) {
    return UserInfo.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [UserInfo] to a JSON string.
  String toJson() => json.encode(toMap());

  UserInfo copyWith({
    String? accessToken,
    String? tokenType,
    int? expiresIn,
    String? refreshToken,
    String? userName,
    String? id,
    String? logtime,
    String? code,
    String? result,
    String? passtype,
    String? name,
    String? principal,
    String? roles,
    String? wcf,
    String? issued,
    String? expires,
  }) {
    return UserInfo(
      accessToken: accessToken ?? this.accessToken,
      tokenType: tokenType ?? this.tokenType,
      expiresIn: expiresIn ?? this.expiresIn,
      refreshToken: refreshToken ?? this.refreshToken,
      userName: userName ?? this.userName,
      id: id ?? this.id,
      logtime: logtime ?? this.logtime,
      code: code ?? this.code,
      result: result ?? this.result,
      passtype: passtype ?? this.passtype,
      name: name ?? this.name,
      principal: principal ?? this.principal,
      roles: roles ?? this.roles,
      wcf: wcf ?? this.wcf,
      issued: issued ?? this.issued,
      expires: expires ?? this.expires,
    );
  }

  @override
  List<Object?> get props {
    return [
      accessToken,
      tokenType,
      expiresIn,
      refreshToken,
      userName,
      id,
      logtime,
      code,
      result,
      passtype,
      name,
      principal,
      roles,
      wcf,
      issued,
      expires,
    ];
  }
}
