// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_editions_for_select_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetEditionsForSelectModel _$GetEditionsForSelectModelFromJson(
  Map<String, dynamic> json,
) => GetEditionsForSelectModel(
  result: GetEditionsForSelectDataModel.fromJson(
    json['result'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$GetEditionsForSelectModelToJson(
  GetEditionsForSelectModel instance,
) => <String, dynamic>{'result': instance.result};

GetEditionsForSelectDataModel _$GetEditionsForSelectDataModelFromJson(
  Map<String, dynamic> json,
) => GetEditionsForSelectDataModel(
  allFeatures: (json['allFeatures'] as List<dynamic>)
      .map((e) => EditionFeatureModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  editionsWithFeatures: (json['editionsWithFeatures'] as List<dynamic>)
      .map((e) => EditionWithFeaturesModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  tenantEditionId: (json['tenantEditionId'] as num?)?.toInt(),
);

Map<String, dynamic> _$GetEditionsForSelectDataModelToJson(
  GetEditionsForSelectDataModel instance,
) => <String, dynamic>{
  'allFeatures': instance.allFeatures,
  'editionsWithFeatures': instance.editionsWithFeatures,
  'tenantEditionId': instance.tenantEditionId,
};

EditionFeatureModel _$EditionFeatureModelFromJson(Map<String, dynamic> json) =>
    EditionFeatureModel(
      name: json['name'] as String,
      parentName: json['parentName'] as String?,
      displayName: json['displayName'] as String,
      description: json['description'] as String?,
      defaultValue: json['defaultValue'] as String,
      metadata: FeatureMetadataModel.fromJson(
        json['metadata'] as Map<String, dynamic>,
      ),
      inputType: FeatureInputTypeModel.fromJson(
        json['inputType'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$EditionFeatureModelToJson(
  EditionFeatureModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'parentName': instance.parentName,
  'displayName': instance.displayName,
  'description': instance.description,
  'defaultValue': instance.defaultValue,
  'metadata': instance.metadata,
  'inputType': instance.inputType,
};

FeatureMetadataModel _$FeatureMetadataModelFromJson(
  Map<String, dynamic> json,
) => FeatureMetadataModel(
  dataType: (json['dataType'] as num).toInt(),
  isVisibleOnPricingTable: json['isVisibleOnPricingTable'] as bool,
  isVisibleOnTenantSubscription: json['isVisibleOnTenantSubscription'] as bool,
);

Map<String, dynamic> _$FeatureMetadataModelToJson(
  FeatureMetadataModel instance,
) => <String, dynamic>{
  'dataType': instance.dataType,
  'isVisibleOnPricingTable': instance.isVisibleOnPricingTable,
  'isVisibleOnTenantSubscription': instance.isVisibleOnTenantSubscription,
};

FeatureInputTypeModel _$FeatureInputTypeModelFromJson(
  Map<String, dynamic> json,
) => FeatureInputTypeModel(
  name: json['name'] as String,
  attributes: json['attributes'] as Map<String, dynamic>,
  validator: FeatureValidatorModel.fromJson(
    json['validator'] as Map<String, dynamic>,
  ),
  itemSource: json['itemSource'],
);

Map<String, dynamic> _$FeatureInputTypeModelToJson(
  FeatureInputTypeModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'attributes': instance.attributes,
  'validator': instance.validator,
  'itemSource': instance.itemSource,
};

FeatureValidatorModel _$FeatureValidatorModelFromJson(
  Map<String, dynamic> json,
) => FeatureValidatorModel(
  name: json['name'] as String,
  attributes: json['attributes'] as Map<String, dynamic>,
  minValue: (json['minValue'] as num?)?.toInt(),
  maxValue: (json['maxValue'] as num?)?.toInt(),
);

Map<String, dynamic> _$FeatureValidatorModelToJson(
  FeatureValidatorModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'attributes': instance.attributes,
  'minValue': instance.minValue,
  'maxValue': instance.maxValue,
};

EditionWithFeaturesModel _$EditionWithFeaturesModelFromJson(
  Map<String, dynamic> json,
) => EditionWithFeaturesModel(
  edition: EditionModel.fromJson(json['edition'] as Map<String, dynamic>),
  featureValues: (json['featureValues'] as List<dynamic>)
      .map((e) => EditionFeatureValueModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$EditionWithFeaturesModelToJson(
  EditionWithFeaturesModel instance,
) => <String, dynamic>{
  'edition': instance.edition,
  'featureValues': instance.featureValues,
};

EditionModel _$EditionModelFromJson(Map<String, dynamic> json) => EditionModel(
  name: json['name'] as String,
  displayName: json['displayName'] as String,
  publicDescription: json['publicDescription'] as String?,
  isPublished: json['isPublished'] as bool,
  isRegistrable: json['isRegistrable'] as bool,
  type: (json['type'] as num).toInt(),
  minimumUsersCount: (json['minimumUsersCount'] as num?)?.toInt(),
  monthlyPrice: (json['monthlyPrice'] as num?)?.toDouble(),
  annualPrice: (json['annualPrice'] as num?)?.toDouble(),
  waitingDayAfterExpire: (json['waitingDayAfterExpire'] as num?)?.toInt(),
  trialDayCount: (json['trialDayCount'] as num?)?.toInt(),
  countAllowExtendTrial: (json['countAllowExtendTrial'] as num?)?.toInt(),
  hasTrial: json['hasTrial'] as bool,
  disableWorkspaceAfterExpire: json['disableWorkspaceAfterExpire'] as bool,
  isMostPopular: json['isMostPopular'] as bool?,
  doNotSendVerifyEmail: json['doNotSendVerifyEmail'] as bool?,
  expiringEdition: json['expiringEdition'] == null
      ? null
      : ExpiringEditionModel.fromJson(
          json['expiringEdition'] as Map<String, dynamic>,
        ),
  seatsText: json['seatsText'] as String?,
  buttonText: json['buttonText'] as String?,
  buttonLink: json['buttonLink'] as String?,
  starterLineText: json['starterLineText'] as String?,
  editionColor: json['editionColor'] as String?,
  id: (json['id'] as num).toInt(),
);

Map<String, dynamic> _$EditionModelToJson(EditionModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'displayName': instance.displayName,
      'publicDescription': instance.publicDescription,
      'isPublished': instance.isPublished,
      'isRegistrable': instance.isRegistrable,
      'type': instance.type,
      'minimumUsersCount': instance.minimumUsersCount,
      'monthlyPrice': instance.monthlyPrice,
      'annualPrice': instance.annualPrice,
      'waitingDayAfterExpire': instance.waitingDayAfterExpire,
      'trialDayCount': instance.trialDayCount,
      'countAllowExtendTrial': instance.countAllowExtendTrial,
      'hasTrial': instance.hasTrial,
      'disableWorkspaceAfterExpire': instance.disableWorkspaceAfterExpire,
      'isMostPopular': instance.isMostPopular,
      'doNotSendVerifyEmail': instance.doNotSendVerifyEmail,
      'expiringEdition': instance.expiringEdition,
      'seatsText': instance.seatsText,
      'buttonText': instance.buttonText,
      'buttonLink': instance.buttonLink,
      'starterLineText': instance.starterLineText,
      'editionColor': instance.editionColor,
      'id': instance.id,
    };

ExpiringEditionModel _$ExpiringEditionModelFromJson(
  Map<String, dynamic> json,
) => ExpiringEditionModel(
  name: json['name'] as String,
  displayName: json['displayName'] as String,
  id: (json['id'] as num).toInt(),
);

Map<String, dynamic> _$ExpiringEditionModelToJson(
  ExpiringEditionModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'displayName': instance.displayName,
  'id': instance.id,
};

EditionFeatureValueModel _$EditionFeatureValueModelFromJson(
  Map<String, dynamic> json,
) => EditionFeatureValueModel(
  name: json['name'] as String,
  value: json['value'] as String,
);

Map<String, dynamic> _$EditionFeatureValueModelToJson(
  EditionFeatureValueModel instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};
