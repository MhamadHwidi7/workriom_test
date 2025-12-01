class RegisterTenantBody {
  final String adminEmailAddress;
  final String adminFirstName;
  final String adminLastName;
  final String adminPassword;
  //! this in the testing and documentation is null
  // final String? captchaResponse;
  final String editionId;
  final String name;
  final String tenancyName;

  const RegisterTenantBody({
    required this.adminEmailAddress,
    required this.adminFirstName,
    required this.adminLastName,
    required this.adminPassword,
    //! this in the testing and documentation is null

    // this.captchaResponse,
    required this.editionId,
    required this.name,
    required this.tenancyName,
  });

  Map<String, dynamic> toMap() {
    return {
      'adminEmailAddress': adminEmailAddress,
      'adminFirstName': adminFirstName,
      'adminLastName': adminLastName,
      'adminPassword': adminPassword,
      'captchaResponse': null,
      'editionId': editionId,
      'name': name,
      'tenancyName': tenancyName,
    };
  }
}
