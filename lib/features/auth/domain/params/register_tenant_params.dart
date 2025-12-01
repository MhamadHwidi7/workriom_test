class RegisterTenantParams {
  final String timeZone;

  const RegisterTenantParams({required this.timeZone});

  Map<String, dynamic> toQueryParameters() {
    return {'timeZone': timeZone};
  }
}
