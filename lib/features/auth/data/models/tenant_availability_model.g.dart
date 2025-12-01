// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_availability_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TenantAvailabilityModel _$TenantAvailabilityModelFromJson(
  Map<String, dynamic> json,
) => TenantAvailabilityModel(
  result: TenantAvailabilityDataModel.fromJson(
    json['result'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$TenantAvailabilityModelToJson(
  TenantAvailabilityModel instance,
) => <String, dynamic>{'result': instance.result};

TenantAvailabilityDataModel _$TenantAvailabilityDataModelFromJson(
  Map<String, dynamic> json,
) => TenantAvailabilityDataModel(
  state: (json['state'] as num).toInt(),
  tenantId: (json['tenantId'] as num?)?.toInt(),
);

Map<String, dynamic> _$TenantAvailabilityDataModelToJson(
  TenantAvailabilityDataModel instance,
) => <String, dynamic>{'state': instance.state, 'tenantId': instance.tenantId};
