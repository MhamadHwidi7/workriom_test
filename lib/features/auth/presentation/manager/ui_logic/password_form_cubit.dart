import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/password_complexity_setting_entity.dart';

part 'password_form_state.dart';

@injectable
class PasswordFormCubit extends Cubit<PasswordFormState> {
  PasswordFormCubit(
    @factoryParam PasswordComplexitySettingEntity initialSettings,
  ) : _settings = initialSettings,
      super(const PasswordFormState()) {
    passwordController.addListener(_onPasswordChanged);
    emailController.addListener(_onEmailChanged);
  }

  PasswordComplexitySettingEntity _settings;
  PasswordComplexitySettingEntity get settings => _settings;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  void clearEmail() {
    emailController.clear();
    emit(state.copyWith(email: '', isEmailValid: false));
  }

  void toggleObscure() {
    emit(state.copyWith(obscurePassword: !state.obscurePassword));
  }

  void updateSettings(PasswordComplexitySettingEntity newSettings) {
    _settings = newSettings;
    _onPasswordChanged();
  }

  void _onEmailChanged() {
    final email = emailController.text.trim();
    final hasValue = email.isNotEmpty;
    final isValidFormat = _emailRegExp.hasMatch(email);
    emit(state.copyWith(email: email, isEmailValid: hasValue && isValidFormat));
  }

  void _onPasswordChanged() {
    final pwd = passwordController.text;

    final checks = _evaluatePassword(pwd);
    final strength = _calculateStrength(checks);

    emit(state.copyWith(password: pwd, strength: strength, checks: checks));
  }

  PasswordChecks _evaluatePassword(String password) {
    final hasMinLength = password.length >= _settings.requiredLength;
    final hasUppercase =
        !_settings.requireUppercase || _upperCaseRegExp.hasMatch(password);
    final hasLowercase =
        !_settings.requireLowercase || _lowerCaseRegExp.hasMatch(password);
    final hasDigit = !_settings.requireDigit || _digitRegExp.hasMatch(password);
    final hasSpecial =
        !_settings.requireNonAlphanumeric || _specialRegExp.hasMatch(password);

    return PasswordChecks(
      hasMinLength: hasMinLength,
      hasUppercase: hasUppercase,
      hasLowercase: hasLowercase,
      hasDigit: hasDigit,
      hasSpecial: hasSpecial,
    );
  }

  double _calculateStrength(PasswordChecks checks) {
    int score = 0;
    int maxScore = 0;
    maxScore++;
    if (checks.hasMinLength) score++;

    if (_settings.requireUppercase) {
      maxScore++;
      if (checks.hasUppercase) score++;
    }
    if (_settings.requireLowercase) {
      maxScore++;
      if (checks.hasLowercase) score++;
    }
    if (_settings.requireDigit) {
      maxScore++;
      if (checks.hasDigit) score++;
    }
    if (_settings.requireNonAlphanumeric) {
      maxScore++;
      if (checks.hasSpecial) score++;
    }

    if (maxScore == 0) return 0;
    return score / maxScore;
  }

  bool get isStrong {
    final checks = state.checks;
    if (checks == null) return false;
    return checks.allSatisfied(_settings);
  }

  bool get isEmailValid => state.isEmailValid;

  static final _upperCaseRegExp = RegExp(r'[A-Z]');
  static final _lowerCaseRegExp = RegExp(r'[a-z]');
  static final _digitRegExp = RegExp(r'\d');
  static final _specialRegExp = RegExp(r'[^A-Za-z0-9]');
  static final _emailRegExp = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
}
