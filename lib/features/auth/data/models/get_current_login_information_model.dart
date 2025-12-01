import 'package:json_annotation/json_annotation.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/get_current_login_information_entity.dart';

part 'get_current_login_information_model.g.dart';

@JsonSerializable()
class GetCurrentLoginInformationModel {
  final GetCurrentLoginInformationDataModel? result;

  const GetCurrentLoginInformationModel({this.result});

  factory GetCurrentLoginInformationModel.fromJson(Map<String, dynamic> json) =>
      _$GetCurrentLoginInformationModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetCurrentLoginInformationModelToJson(this);

  GetCurrentLoginInformation toEntity() {
    return GetCurrentLoginInformation(
      user: result?.user?.toEntity(),
      tenant: result?.tenant?.toEntity(),
    );
  }
}

@JsonSerializable()
class GetCurrentLoginInformationDataModel {
  final CurrentLoginUserModel? user;
  final CurrentLoginTenantModel? tenant;

  const GetCurrentLoginInformationDataModel({this.user, this.tenant});

  factory GetCurrentLoginInformationDataModel.fromJson(
    Map<String, dynamic> json,
  ) => _$GetCurrentLoginInformationDataModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetCurrentLoginInformationDataModelToJson(this);

  GetCurrentLoginInformation toEntity() {
    return GetCurrentLoginInformation(
      user: user?.toEntity(),
      tenant: tenant?.toEntity(),
    );
  }

  factory GetCurrentLoginInformationDataModel.fromEntity(
    GetCurrentLoginInformation entity,
  ) {
    return GetCurrentLoginInformationDataModel(
      user: entity.user == null
          ? null
          : CurrentLoginUserModel.fromEntity(entity.user!),
      tenant: entity.tenant == null
          ? null
          : CurrentLoginTenantModel.fromEntity(entity.tenant!),
    );
  }
}

@JsonSerializable()
class CurrentLoginUserModel {
  final int? id;
  final String? name;
  @JsonKey(name: 'surname')
  final String? surName;
  final String? userName;
  final String? emailAddress;

  const CurrentLoginUserModel({
    this.id,
    this.name,
    this.surName,
    this.userName,
    this.emailAddress,
  });

  factory CurrentLoginUserModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentLoginUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentLoginUserModelToJson(this);

  CurrentLoginUserEntity toEntity() {
    return CurrentLoginUserEntity(
      id: id,
      name: name,
      surname: surName,
      userName: userName,
      emailAddress: emailAddress,
    );
  }

  factory CurrentLoginUserModel.fromEntity(CurrentLoginUserEntity entity) {
    return CurrentLoginUserModel(
      id: entity.id,
      name: entity.name,
      surName: entity.surname,
      userName: entity.userName,
      emailAddress: entity.emailAddress,
    );
  }
}

@JsonSerializable()
class CurrentLoginTenantModel {
  final String? tenancyName;
  final String? name;

  const CurrentLoginTenantModel({this.tenancyName, this.name});

  factory CurrentLoginTenantModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentLoginTenantModelFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentLoginTenantModelToJson(this);

  CurrentLoginTenantEntity toEntity() {
    return CurrentLoginTenantEntity(tenancyName: tenancyName, name: name);
  }

  factory CurrentLoginTenantModel.fromEntity(CurrentLoginTenantEntity entity) {
    return CurrentLoginTenantModel(
      tenancyName: entity.tenancyName,
      name: entity.name,
    );
  }
}
