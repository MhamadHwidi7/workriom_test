class TenantAvailabilityEntity {
  final int state;
  final int? tenantId;

  const TenantAvailabilityEntity({required this.state, this.tenantId});

  bool get hasTenant => tenantId != null;
}
