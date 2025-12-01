// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_current_login_information_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCurrentLoginInformationModel _$GetCurrentLoginInformationModelFromJson(
  Map<String, dynamic> json,
) => GetCurrentLoginInformationModel(
  result: json['result'] == null
      ? null
      : GetCurrentLoginInformationDataModel.fromJson(
          json['result'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$GetCurrentLoginInformationModelToJson(
  GetCurrentLoginInformationModel instance,
) => <String, dynamic>{'result': instance.result};

GetCurrentLoginInformationDataModel
_$GetCurrentLoginInformationDataModelFromJson(Map<String, dynamic> json) =>
    GetCurrentLoginInformationDataModel(
      user: json['user'] == null
          ? null
          : CurrentLoginUserModel.fromJson(
              json['user'] as Map<String, dynamic>,
            ),
      tenant: json['tenant'] == null
          ? null
          : CurrentLoginTenantModel.fromJson(
              json['tenant'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$GetCurrentLoginInformationDataModelToJson(
  GetCurrentLoginInformationDataModel instance,
) => <String, dynamic>{'user': instance.user, 'tenant': instance.tenant};

CurrentLoginUserModel _$CurrentLoginUserModelFromJson(
  Map<String, dynamic> json,
) => CurrentLoginUserModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  surName: json['surname'] as String?,
  userName: json['userName'] as String?,
  emailAddress: json['emailAddress'] as String?,
);

Map<String, dynamic> _$CurrentLoginUserModelToJson(
  CurrentLoginUserModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'surname': instance.surName,
  'userName': instance.userName,
  'emailAddress': instance.emailAddress,
};

CurrentLoginTenantModel _$CurrentLoginTenantModelFromJson(
  Map<String, dynamic> json,
) => CurrentLoginTenantModel(
  tenancyName: json['tenancyName'] as String?,
  name: json['name'] as String?,
);

Map<String, dynamic> _$CurrentLoginTenantModelToJson(
  CurrentLoginTenantModel instance,
) => <String, dynamic>{
  'tenancyName': instance.tenancyName,
  'name': instance.name,
};
