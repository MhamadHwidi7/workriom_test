import 'package:json_annotation/json_annotation.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/authenticate_result_entity.dart';

part 'authenticate_result_model.g.dart';

@JsonSerializable()
class AuthenticateResultModel {
  final AuthenticateResultDataModel result;
  const AuthenticateResultModel({required this.result});

  factory AuthenticateResultModel.fromJson(Map<String, dynamic> json) =>
      _$AuthenticateResultModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenticateResultModelToJson(this);

  AuthenticateResultEntity toEntity() {
    return AuthenticateResultEntity(
      accessToken: result.accessToken,
      encryptedAccessToken: result.encryptedAccessToken,
      expireInSeconds: result.expireInSeconds,
      shouldResetPassword: result.shouldResetPassword,
      passwordExpired: result.passwordExpired,
      userId: result.userId,
      requiresTwoFactorVerification: result.requiresTwoFactorVerification,
      refreshToken: result.refreshToken,
      refreshTokenExpireInSeconds: result.refreshTokenExpireInSeconds,
    );
  }
}

@JsonSerializable()
class AuthenticateResultDataModel {
  final String accessToken;
  final String encryptedAccessToken;
  final int expireInSeconds;
  final bool shouldResetPassword;
  final String? passwordResetCode;
  final bool passwordExpired;
  final int userId;
  final bool requiresTwoFactorVerification;
  final List<String>? twoFactorAuthProviders;
  final String? twoFactorRememberClientToken;
  final String? returnUrl;
  final String refreshToken;
  final int refreshTokenExpireInSeconds;
  final String? captchaResult;

  const AuthenticateResultDataModel({
    required this.accessToken,
    required this.encryptedAccessToken,
    required this.expireInSeconds,
    required this.shouldResetPassword,
    this.passwordResetCode,
    required this.passwordExpired,
    required this.userId,
    required this.requiresTwoFactorVerification,
    this.twoFactorAuthProviders,
    this.twoFactorRememberClientToken,
    this.returnUrl,
    required this.refreshToken,
    required this.refreshTokenExpireInSeconds,
    this.captchaResult,
  });

  factory AuthenticateResultDataModel.fromJson(Map<String, dynamic> json) =>
      _$AuthenticateResultDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenticateResultDataModelToJson(this);

  AuthenticateResultEntity toEntity() {
    return AuthenticateResultEntity(
      accessToken: accessToken,
      encryptedAccessToken: encryptedAccessToken,
      expireInSeconds: expireInSeconds,
      shouldResetPassword: shouldResetPassword,
      passwordResetCode: passwordResetCode,
      passwordExpired: passwordExpired,
      userId: userId,
      requiresTwoFactorVerification: requiresTwoFactorVerification,
      twoFactorAuthProviders: twoFactorAuthProviders,
      twoFactorRememberClientToken: twoFactorRememberClientToken,
      returnUrl: returnUrl,
      refreshToken: refreshToken,
      refreshTokenExpireInSeconds: refreshTokenExpireInSeconds,
      captchaResult: captchaResult,
    );
  }

  factory AuthenticateResultDataModel.fromEntity(
    AuthenticateResultEntity entity,
  ) {
    return AuthenticateResultDataModel(
      accessToken: entity.accessToken,
      encryptedAccessToken: entity.encryptedAccessToken,
      expireInSeconds: entity.expireInSeconds,
      shouldResetPassword: entity.shouldResetPassword,
      passwordResetCode: entity.passwordResetCode,
      passwordExpired: entity.passwordExpired,
      userId: entity.userId,
      requiresTwoFactorVerification: entity.requiresTwoFactorVerification,
      twoFactorAuthProviders: entity.twoFactorAuthProviders,
      twoFactorRememberClientToken: entity.twoFactorRememberClientToken,
      returnUrl: entity.returnUrl,
      refreshToken: entity.refreshToken,
      refreshTokenExpireInSeconds: entity.refreshTokenExpireInSeconds,
      captchaResult: entity.captchaResult,
    );
  }
}
