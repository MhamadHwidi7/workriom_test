import 'package:json_annotation/json_annotation.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/tenant_availability_entity.dart';

part 'tenant_availability_model.g.dart';

@JsonSerializable()
class TenantAvailabilityModel {
  final TenantAvailabilityDataModel result;

  const TenantAvailabilityModel({required this.result});

  factory TenantAvailabilityModel.fromJson(Map<String, dynamic> json) =>
      _$TenantAvailabilityModelFromJson(json);

  Map<String, dynamic> toJson() => _$TenantAvailabilityModelToJson(this);

  TenantAvailabilityEntity toEntity() {
    return TenantAvailabilityEntity(
      state: result.state,
      tenantId: result.tenantId,
    );
  }
}

@JsonSerializable()
class TenantAvailabilityDataModel {
  final int state;
  final int? tenantId;

  const TenantAvailabilityDataModel({required this.state, this.tenantId});

  factory TenantAvailabilityDataModel.fromJson(Map<String, dynamic> json) =>
      _$TenantAvailabilityDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$TenantAvailabilityDataModelToJson(this);

  TenantAvailabilityEntity toEntity() {
    return TenantAvailabilityEntity(state: state, tenantId: tenantId);
  }

  factory TenantAvailabilityDataModel.fromEntity(
    TenantAvailabilityEntity entity,
  ) {
    return TenantAvailabilityDataModel(
      state: entity.state,
      tenantId: entity.tenantId,
    );
  }
}
