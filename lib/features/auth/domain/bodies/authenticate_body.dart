class AuthenticateBody {
  final String ianaTimeZone;
  final String password;
  final bool rememberClient;
  final String? returnUrl;
  final bool singleSignIn;
  final String tenantName;
  final String userNameOrEmailAddress;

  const AuthenticateBody({
    required this.ianaTimeZone,
    required this.password,
    required this.rememberClient,
    required this.returnUrl,
    required this.singleSignIn,
    required this.tenantName,
    required this.userNameOrEmailAddress,
  });

  Map<String, dynamic> toMap() {
    return {
      'ianaTimeZone': ianaTimeZone,
      'password': password,
      'rememberClient': rememberClient,
      'returnUrl': returnUrl,
      'singleSignIn': singleSignIn,
      'tenantName': tenantName,
      'userNameOrEmailAddress': userNameOrEmailAddress,
    };
  }
}
