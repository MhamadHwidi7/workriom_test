part of 'password_form_cubit.dart';

class PasswordFormState extends Equatable {
  final String password;
  final double strength;
  final bool obscurePassword;
  final PasswordChecks? checks;

  final String email;
  final bool isEmailValid;

  const PasswordFormState({
    this.password = '',
    this.strength = 0.0,
    this.obscurePassword = true,
    this.checks,
    this.email = '',
    this.isEmailValid = false,
  });

  PasswordFormState copyWith({
    String? password,
    double? strength,
    bool? obscurePassword,
    PasswordChecks? checks,
    String? email,
    bool? isEmailValid,
  }) {
    return PasswordFormState(
      password: password ?? this.password,
      strength: strength ?? this.strength,
      obscurePassword: obscurePassword ?? this.obscurePassword,
      checks: checks ?? this.checks,
      email: email ?? this.email,
      isEmailValid: isEmailValid ?? this.isEmailValid,
    );
  }

  @override
  List<Object?> get props => [
    password,
    strength,
    obscurePassword,
    checks,
    email,
    isEmailValid,
  ];
}

class PasswordChecks {
  final bool hasMinLength;
  final bool hasUppercase;
  final bool hasLowercase;
  final bool hasDigit;
  final bool hasSpecial;

  const PasswordChecks({
    required this.hasMinLength,
    required this.hasUppercase,
    required this.hasLowercase,
    required this.hasDigit,
    required this.hasSpecial,
  });
  bool allSatisfied(PasswordComplexitySettingEntity settings) {
    if (!hasMinLength) return false;

    if (settings.requireUppercase && !hasUppercase) return false;
    if (settings.requireLowercase && !hasLowercase) return false;
    if (settings.requireDigit && !hasDigit) return false;
    if (settings.requireNonAlphanumeric && !hasSpecial) return false;

    return true;
  }
}
