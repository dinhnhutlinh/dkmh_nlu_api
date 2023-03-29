import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_info.g.dart';

@JsonSerializable()
class UserInfo extends Equatable {
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @JsonKey(name: 'token_type')
  final String? tokenType;
  @JsonKey(name: 'expires_in')
  final int? expiresIn;
  @JsonKey(name: 'refresh_token')
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
  @JsonKey(name: '.issued')
  final String? issued;
  @JsonKey(name: '.expires')
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

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return _$UserInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);

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
