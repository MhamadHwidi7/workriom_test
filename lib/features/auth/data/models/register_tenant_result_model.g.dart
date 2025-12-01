// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_tenant_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterTenantResultModel _$RegisterTenantResultModelFromJson(
  Map<String, dynamic> json,
) => RegisterTenantResultModel(
  result: RegisterTenantResultDataModel.fromJson(
    json['result'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$RegisterTenantResultModelToJson(
  RegisterTenantResultModel instance,
) => <String, dynamic>{'result': instance.result};

RegisterTenantResultDataModel _$RegisterTenantResultDataModelFromJson(
  Map<String, dynamic> json,
) => RegisterTenantResultDataModel(
  tenantId: (json['tenantId'] as num).toInt(),
  tenancyName: json['tenancyName'] as String,
  name: json['name'] as String,
  userName: json['userName'] as String,
  emailAddress: json['emailAddress'] as String,
  isTenantActive: json['isTenantActive'] as bool,
  isActive: json['isActive'] as bool,
  isEmailConfirmationRequired: json['isEmailConfirmationRequired'] as bool,
  captchaResult: json['captchaResult'] as String?,
);

Map<String, dynamic> _$RegisterTenantResultDataModelToJson(
  RegisterTenantResultDataModel instance,
) => <String, dynamic>{
  'tenantId': instance.tenantId,
  'tenancyName': instance.tenancyName,
  'name': instance.name,
  'userName': instance.userName,
  'emailAddress': instance.emailAddress,
  'isTenantActive': instance.isTenantActive,
  'isActive': instance.isActive,
  'isEmailConfirmationRequired': instance.isEmailConfirmationRequired,
  'captchaResult': instance.captchaResult,
};
