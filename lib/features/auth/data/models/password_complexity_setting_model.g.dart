// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_complexity_setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PasswordComplexitySettingModel _$PasswordComplexitySettingModelFromJson(
  Map<String, dynamic> json,
) => PasswordComplexitySettingModel(
  result: PasswordComplexityResultModel.fromJson(
    json['result'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$PasswordComplexitySettingModelToJson(
  PasswordComplexitySettingModel instance,
) => <String, dynamic>{'result': instance.result};

PasswordComplexityResultModel _$PasswordComplexityResultModelFromJson(
  Map<String, dynamic> json,
) => PasswordComplexityResultModel(
  setting: PasswordComplexitySettingDataModel.fromJson(
    json['setting'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$PasswordComplexityResultModelToJson(
  PasswordComplexityResultModel instance,
) => <String, dynamic>{'setting': instance.setting};

PasswordComplexitySettingDataModel _$PasswordComplexitySettingDataModelFromJson(
  Map<String, dynamic> json,
) => PasswordComplexitySettingDataModel(
  requireDigit: json['requireDigit'] as bool,
  requireLowercase: json['requireLowercase'] as bool,
  requireNonAlphanumeric: json['requireNonAlphanumeric'] as bool,
  requireUppercase: json['requireUppercase'] as bool,
  requiredLength: (json['requiredLength'] as num).toInt(),
);

Map<String, dynamic> _$PasswordComplexitySettingDataModelToJson(
  PasswordComplexitySettingDataModel instance,
) => <String, dynamic>{
  'requireDigit': instance.requireDigit,
  'requireLowercase': instance.requireLowercase,
  'requireNonAlphanumeric': instance.requireNonAlphanumeric,
  'requireUppercase': instance.requireUppercase,
  'requiredLength': instance.requiredLength,
};
