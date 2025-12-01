import 'package:workiom_technical_test/features/auth/domain/entity/password_complexity_setting_entity.dart';

const defaultPasswordSettings = PasswordComplexitySettingEntity(
  requireDigit: true,
  requireLowercase: true,
  requireNonAlphanumeric: false,
  requireUppercase: true,
  requiredLength: 6,
);
