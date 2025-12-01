class GetCurrentLoginInformation {
  final CurrentLoginUserEntity? user;
  final CurrentLoginTenantEntity? tenant;

  const GetCurrentLoginInformation({this.user, this.tenant});
}

class CurrentLoginUserEntity {
  final int? id;
  final String? name;
  final String? surname;
  final String? userName;
  final String? emailAddress;

  const CurrentLoginUserEntity({
    this.id,
    this.name,
    this.surname,
    this.userName,
    this.emailAddress,
  });
}

class CurrentLoginTenantEntity {
  final int? id;
  final String? tenancyName;
  final String? name;

  const CurrentLoginTenantEntity({this.id, this.tenancyName, this.name});
}
