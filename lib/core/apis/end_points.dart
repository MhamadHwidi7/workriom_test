class EndPoints {
  EndPoints._();
  static const String baseUrl = 'https://api.workiom.club/api';
  static const String getCurrentLoginInformation =
      '/services/app/Session/GetCurrentLoginInformations';
  static const String getEditionsForSelect =
      '/services/app/TenantRegistration/GetEditionsForSelect';
  static const String getPasswordComplexitySetting =
      '/services/app/Profile/GetPasswordComplexitySetting';
  static const String isTenantAvailable =
      '/services/app/Account/IsTenantAvailable';

  static const String registerTenant =
      '/services/app/TenantRegistration/RegisterTenant';

  static const String authenticate = '/TokenAuth/Authenticate';
}
