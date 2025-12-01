class PasswordComplexitySettingEntity {
  final bool requireDigit;
  final bool requireLowercase;
  final bool requireNonAlphanumeric;
  final bool requireUppercase;
  final int requiredLength;

  const PasswordComplexitySettingEntity({
    required this.requireDigit,
    required this.requireLowercase,
    required this.requireNonAlphanumeric,
    required this.requireUppercase,
    required this.requiredLength,
  });
}
