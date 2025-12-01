class RegisterTenantResultEntity {
  final int tenantId;
  final String tenancyName;
  final String name;
  final String userName;
  final String emailAddress;
  final bool isTenantActive;
  final bool isActive;
  final bool isEmailConfirmationRequired;
  final String? captchaResult;

  const RegisterTenantResultEntity({
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
}
