import 'package:json_annotation/json_annotation.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/password_complexity_setting_entity.dart';

part 'password_complexity_setting_model.g.dart';

@JsonSerializable()
class PasswordComplexitySettingModel {
  final PasswordComplexityResultModel result;

  const PasswordComplexitySettingModel({required this.result});

  factory PasswordComplexitySettingModel.fromJson(Map<String, dynamic> json) =>
      _$PasswordComplexitySettingModelFromJson(json);

  Map<String, dynamic> toJson() => _$PasswordComplexitySettingModelToJson(this);

  PasswordComplexitySettingEntity toEntity() {
    return result.setting.toEntity();
  }
}

@JsonSerializable()
class PasswordComplexityResultModel {
  final PasswordComplexitySettingDataModel setting;

  const PasswordComplexityResultModel({required this.setting});

  factory PasswordComplexityResultModel.fromJson(Map<String, dynamic> json) =>
      _$PasswordComplexityResultModelFromJson(json);

  Map<String, dynamic> toJson() => _$PasswordComplexityResultModelToJson(this);
}

@JsonSerializable()
class PasswordComplexitySettingDataModel {
  final bool requireDigit;
  final bool requireLowercase;
  final bool requireNonAlphanumeric;
  final bool requireUppercase;
  final int requiredLength;

  const PasswordComplexitySettingDataModel({
    required this.requireDigit,
    required this.requireLowercase,
    required this.requireNonAlphanumeric,
    required this.requireUppercase,
    required this.requiredLength,
  });

  factory PasswordComplexitySettingDataModel.fromJson(
    Map<String, dynamic> json,
  ) => _$PasswordComplexitySettingDataModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PasswordComplexitySettingDataModelToJson(this);

  PasswordComplexitySettingEntity toEntity() {
    return PasswordComplexitySettingEntity(
      requireDigit: requireDigit,
      requireLowercase: requireLowercase,
      requireNonAlphanumeric: requireNonAlphanumeric,
      requireUppercase: requireUppercase,
      requiredLength: requiredLength,
    );
  }

  factory PasswordComplexitySettingDataModel.fromEntity(
    PasswordComplexitySettingEntity entity,
  ) {
    return PasswordComplexitySettingDataModel(
      requireDigit: entity.requireDigit,
      requireLowercase: entity.requireLowercase,
      requireNonAlphanumeric: entity.requireNonAlphanumeric,
      requireUppercase: entity.requireUppercase,
      requiredLength: entity.requiredLength,
    );
  }
}
