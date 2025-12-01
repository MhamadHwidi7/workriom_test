import 'package:json_annotation/json_annotation.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/register_tenant_result_entity.dart';

part 'register_tenant_result_model.g.dart';

@JsonSerializable()
class RegisterTenantResultModel {
  final RegisterTenantResultDataModel result;

  const RegisterTenantResultModel({required this.result});

  factory RegisterTenantResultModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterTenantResultModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterTenantResultModelToJson(this);

  RegisterTenantResultEntity toEntity() {
    return RegisterTenantResultEntity(
      tenantId: result.tenantId,
      tenancyName: result.tenancyName,
      name: result.name,
      userName: result.userName,
      emailAddress: result.emailAddress,
      isTenantActive: result.isTenantActive,
      isActive: result.isActive,
      isEmailConfirmationRequired: result.isEmailConfirmationRequired,
      captchaResult: result.captchaResult,
    );
  }
}

@JsonSerializable()
class RegisterTenantResultDataModel {
  final int tenantId;
  final String tenancyName;
  final String name;
  final String userName;
  final String emailAddress;
  final bool isTenantActive;
  final bool isActive;
  final bool isEmailConfirmationRequired;
  final String? captchaResult;

  const RegisterTenantResultDataModel({
    required this.tenantId,
    required this.tenancyName,
    required this.name,
    required this.userName,
    required this.emailAddress,
    required this.isTenantActive,
    required this.isActive,
    required this.isEmailConfirmationRequired,
    this.captchaResult,
  });

  factory RegisterTenantResultDataModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterTenantResultDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterTenantResultDataModelToJson(this);

  RegisterTenantResultEntity toEntity() {
    return RegisterTenantResultEntity(
      tenantId: tenantId,
      tenancyName: tenancyName,
      name: name,
      userName: userName,
      emailAddress: emailAddress,
      isTenantActive: isTenantActive,
      isActive: isActive,
      isEmailConfirmationRequired: isEmailConfirmationRequired,
      captchaResult: captchaResult,
    );
  }

  factory RegisterTenantResultDataModel.fromEntity(
    RegisterTenantResultEntity entity,
  ) {
    return RegisterTenantResultDataModel(
      tenantId: entity.tenantId,
      tenancyName: entity.tenancyName,
      name: entity.name,
      userName: entity.userName,
      emailAddress: entity.emailAddress,
      isTenantActive: entity.isTenantActive,
      isActive: entity.isActive,
      isEmailConfirmationRequired: entity.isEmailConfirmationRequired,
      captchaResult: entity.captchaResult,
    );
  }
}
