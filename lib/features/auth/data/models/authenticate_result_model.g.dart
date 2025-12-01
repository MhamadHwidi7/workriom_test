// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticate_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticateResultModel _$AuthenticateResultModelFromJson(
  Map<String, dynamic> json,
) => AuthenticateResultModel(
  result: AuthenticateResultDataModel.fromJson(
    json['result'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AuthenticateResultModelToJson(
  AuthenticateResultModel instance,
) => <String, dynamic>{'result': instance.result};

AuthenticateResultDataModel _$AuthenticateResultDataModelFromJson(
  Map<String, dynamic> json,
) => AuthenticateResultDataModel(
  accessToken: json['accessToken'] as String,
  encryptedAccessToken: json['encryptedAccessToken'] as String,
  expireInSeconds: (json['expireInSeconds'] as num).toInt(),
  shouldResetPassword: json['shouldResetPassword'] as bool,
  passwordResetCode: json['passwordResetCode'] as String?,
  passwordExpired: json['passwordExpired'] as bool,
  userId: (json['userId'] as num).toInt(),
  requiresTwoFactorVerification: json['requiresTwoFactorVerification'] as bool,
  twoFactorAuthProviders: (json['twoFactorAuthProviders'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  twoFactorRememberClientToken: json['twoFactorRememberClientToken'] as String?,
  returnUrl: json['returnUrl'] as String?,
  refreshToken: json['refreshToken'] as String,
  refreshTokenExpireInSeconds: (json['refreshTokenExpireInSeconds'] as num)
      .toInt(),
  captchaResult: json['captchaResult'] as String?,
);

Map<String, dynamic> _$AuthenticateResultDataModelToJson(
  AuthenticateResultDataModel instance,
) => <String, dynamic>{
  'accessToken': instance.accessToken,
  'encryptedAccessToken': instance.encryptedAccessToken,
  'expireInSeconds': instance.expireInSeconds,
  'shouldResetPassword': instance.shouldResetPassword,
  'passwordResetCode': instance.passwordResetCode,
  'passwordExpired': instance.passwordExpired,
  'userId': instance.userId,
  'requiresTwoFactorVerification': instance.requiresTwoFactorVerification,
  'twoFactorAuthProviders': instance.twoFactorAuthProviders,
  'twoFactorRememberClientToken': instance.twoFactorRememberClientToken,
  'returnUrl': instance.returnUrl,
  'refreshToken': instance.refreshToken,
  'refreshTokenExpireInSeconds': instance.refreshTokenExpireInSeconds,
  'captchaResult': instance.captchaResult,
};
