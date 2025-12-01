class AuthenticateResultEntity {
  final String accessToken;
  final String encryptedAccessToken;
  final int expireInSeconds;
  final bool shouldResetPassword;
  final String? passwordResetCode;
  final bool passwordExpired;
  final int userId;
  final bool requiresTwoFactorVerification;
  final List<String>? twoFactorAuthProviders;
  final String? twoFactorRememberClientToken;
  final String? returnUrl;
  final String refreshToken;
  final int refreshTokenExpireInSeconds;
  final String? captchaResult;

  const AuthenticateResultEntity({
    required this.accessToken,
    required this.encryptedAccessToken,
    required this.expireInSeconds,
    required this.shouldResetPassword,
    this.passwordResetCode,
    required this.passwordExpired,
    required this.userId,
    required this.requiresTwoFactorVerification,
    this.twoFactorAuthProviders,
    this.twoFactorRememberClientToken,
    this.returnUrl,
    required this.refreshToken,
    required this.refreshTokenExpireInSeconds,
    this.captchaResult,
  });

  bool get isLoggedIn => accessToken.isNotEmpty;
}
