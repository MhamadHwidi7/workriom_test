class GetEditionsForSelectEntity {
  final List<EditionFeatureEntity> allFeatures;
  final List<EditionWithFeaturesEntity> editionsWithFeatures;
  final int? tenantEditionId;

  const GetEditionsForSelectEntity({
    required this.allFeatures,
    required this.editionsWithFeatures,
    this.tenantEditionId,
  });
}

class EditionFeatureEntity {
  final String name;
  final String? parentName;
  final String displayName;
  final String? description;
  final String defaultValue;
  final FeatureMetadataEntity metadata;
  final FeatureInputTypeEntity inputType;

  const EditionFeatureEntity({
    required this.name,
    this.parentName,
    required this.displayName,
    this.description,
    required this.defaultValue,
    required this.metadata,
    required this.inputType,
  });
}

class FeatureMetadataEntity {
  final int dataType;
  final bool isVisibleOnPricingTable;
  final bool isVisibleOnTenantSubscription;

  const FeatureMetadataEntity({
    required this.dataType,
    required this.isVisibleOnPricingTable,
    required this.isVisibleOnTenantSubscription,
  });
}

class FeatureInputTypeEntity {
  final String name;
  final Map<String, dynamic> attributes;
  final FeatureValidatorEntity validator;
  final dynamic itemSource;

  const FeatureInputTypeEntity({
    required this.name,
    required this.attributes,
    required this.validator,
    this.itemSource,
  });
}

class FeatureValidatorEntity {
  final String name;
  final Map<String, dynamic> attributes;
  final int? minValue;
  final int? maxValue;

  const FeatureValidatorEntity({
    required this.name,
    required this.attributes,
    this.minValue,
    this.maxValue,
  });
}

class EditionWithFeaturesEntity {
  final EditionEntity edition;
  final List<EditionFeatureValueEntity> featureValues;

  const EditionWithFeaturesEntity({
    required this.edition,
    required this.featureValues,
  });
}

class EditionEntity {
  final String name;
  final String displayName;
  final String? publicDescription;
  final bool isPublished;
  final bool isRegistrable;
  final int type;
  final int? minimumUsersCount;
  final double? monthlyPrice;
  final double? annualPrice;
  final int? waitingDayAfterExpire;
  final int? trialDayCount;
  final int? countAllowExtendTrial;
  final bool hasTrial;
  final bool disableWorkspaceAfterExpire;
  final bool? isMostPopular;
  final bool? doNotSendVerifyEmail;
  final ExpiringEditionEntity? expiringEdition;
  final String? seatsText;
  final String? buttonText;
  final String? buttonLink;
  final String? starterLineText;
  final String? editionColor;
  final int id;

  const EditionEntity({
    required this.name,
    required this.displayName,
    this.publicDescription,
    required this.isPublished,
    required this.isRegistrable,
    required this.type,
    this.minimumUsersCount,
    this.monthlyPrice,
    this.annualPrice,
    this.waitingDayAfterExpire,
    this.trialDayCount,
    this.countAllowExtendTrial,
    required this.hasTrial,
    required this.disableWorkspaceAfterExpire,
    this.isMostPopular,
    this.doNotSendVerifyEmail,
    this.expiringEdition,
    this.seatsText,
    this.buttonText,
    this.buttonLink,
    this.starterLineText,
    this.editionColor,
    required this.id,
  });
}

class ExpiringEditionEntity {
  final String name;
  final String displayName;
  final int id;

  const ExpiringEditionEntity({
    required this.name,
    required this.displayName,
    required this.id,
  });
}

class EditionFeatureValueEntity {
  final String name;
  final String value;

  const EditionFeatureValueEntity({required this.name, required this.value});
}
