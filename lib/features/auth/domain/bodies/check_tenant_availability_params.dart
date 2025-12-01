class CheckTenantAvailabilityParams {
  final String tenancyName;

  const CheckTenantAvailabilityParams(this.tenancyName);

  Map<String, dynamic> toJson() {
    return {'tenancyName': tenancyName};
  }
}
