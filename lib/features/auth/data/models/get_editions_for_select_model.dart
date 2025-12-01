import 'package:json_annotation/json_annotation.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/get_editions_for_select_entity.dart';

part 'get_editions_for_select_model.g.dart';

@JsonSerializable()
class GetEditionsForSelectModel {
  @JsonKey(name: 'result')
  final GetEditionsForSelectDataModel result;

  const GetEditionsForSelectModel({required this.result});

  factory GetEditionsForSelectModel.fromJson(Map<String, dynamic> json) =>
      _$GetEditionsForSelectModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetEditionsForSelectModelToJson(this);

  GetEditionsForSelectEntity toEntity() {
    return GetEditionsForSelectEntity(
      allFeatures: result.allFeatures.map((e) => e.toEntity()).toList(),
      editionsWithFeatures: result.editionsWithFeatures
          .map((e) => e.toEntity())
          .toList(),
      tenantEditionId: result.tenantEditionId,
    );
  }
}

@JsonSerializable()
class GetEditionsForSelectDataModel {
  @JsonKey(name: 'allFeatures')
  final List<EditionFeatureModel> allFeatures;

  @JsonKey(name: 'editionsWithFeatures')
  final List<EditionWithFeaturesModel> editionsWithFeatures;

  @JsonKey(name: 'tenantEditionId')
  final int? tenantEditionId;

  const GetEditionsForSelectDataModel({
    required this.allFeatures,
    required this.editionsWithFeatures,
    this.tenantEditionId,
  });

  factory GetEditionsForSelectDataModel.fromJson(Map<String, dynamic> json) =>
      _$GetEditionsForSelectDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetEditionsForSelectDataModelToJson(this);

  GetEditionsForSelectEntity toEntity() {
    return GetEditionsForSelectEntity(
      allFeatures: allFeatures.map((e) => e.toEntity()).toList(),
      editionsWithFeatures: editionsWithFeatures
          .map((e) => e.toEntity())
          .toList(),
      tenantEditionId: tenantEditionId,
    );
  }

  factory GetEditionsForSelectDataModel.fromEntity(
    GetEditionsForSelectEntity entity,
  ) {
    return GetEditionsForSelectDataModel(
      allFeatures: entity.allFeatures
          .map(EditionFeatureModel.fromEntity)
          .toList(),
      editionsWithFeatures: entity.editionsWithFeatures
          .map(EditionWithFeaturesModel.fromEntity)
          .toList(),
      tenantEditionId: entity.tenantEditionId,
    );
  }
}

@JsonSerializable()
class EditionFeatureModel {
  final String name;
  final String? parentName;
  final String displayName;
  final String? description;
  final String defaultValue;
  final FeatureMetadataModel metadata;
  final FeatureInputTypeModel inputType;

  const EditionFeatureModel({
    required this.name,
    this.parentName,
    required this.displayName,
    this.description,
    required this.defaultValue,
    required this.metadata,
    required this.inputType,
  });

  factory EditionFeatureModel.fromJson(Map<String, dynamic> json) =>
      _$EditionFeatureModelFromJson(json);

  Map<String, dynamic> toJson() => _$EditionFeatureModelToJson(this);

  EditionFeatureEntity toEntity() {
    return EditionFeatureEntity(
      name: name,
      parentName: parentName,
      displayName: displayName,
      description: description,
      defaultValue: defaultValue,
      metadata: metadata.toEntity(),
      inputType: inputType.toEntity(),
    );
  }

  factory EditionFeatureModel.fromEntity(EditionFeatureEntity entity) {
    return EditionFeatureModel(
      name: entity.name,
      parentName: entity.parentName,
      displayName: entity.displayName,
      description: entity.description,
      defaultValue: entity.defaultValue,
      metadata: FeatureMetadataModel.fromEntity(entity.metadata),
      inputType: FeatureInputTypeModel.fromEntity(entity.inputType),
    );
  }
}

@JsonSerializable()
class FeatureMetadataModel {
  final int dataType;
  final bool isVisibleOnPricingTable;
  final bool isVisibleOnTenantSubscription;

  const FeatureMetadataModel({
    required this.dataType,
    required this.isVisibleOnPricingTable,
    required this.isVisibleOnTenantSubscription,
  });

  factory FeatureMetadataModel.fromJson(Map<String, dynamic> json) =>
      _$FeatureMetadataModelFromJson(json);

  Map<String, dynamic> toJson() => _$FeatureMetadataModelToJson(this);

  FeatureMetadataEntity toEntity() {
    return FeatureMetadataEntity(
      dataType: dataType,
      isVisibleOnPricingTable: isVisibleOnPricingTable,
      isVisibleOnTenantSubscription: isVisibleOnTenantSubscription,
    );
  }

  factory FeatureMetadataModel.fromEntity(FeatureMetadataEntity entity) {
    return FeatureMetadataModel(
      dataType: entity.dataType,
      isVisibleOnPricingTable: entity.isVisibleOnPricingTable,
      isVisibleOnTenantSubscription: entity.isVisibleOnTenantSubscription,
    );
  }
}

@JsonSerializable()
class FeatureInputTypeModel {
  final String name;
  final Map<String, dynamic> attributes;
  final FeatureValidatorModel validator;
  final dynamic itemSource;

  const FeatureInputTypeModel({
    required this.name,
    required this.attributes,
    required this.validator,
    this.itemSource,
  });

  factory FeatureInputTypeModel.fromJson(Map<String, dynamic> json) =>
      _$FeatureInputTypeModelFromJson(json);

  Map<String, dynamic> toJson() => _$FeatureInputTypeModelToJson(this);

  FeatureInputTypeEntity toEntity() {
    return FeatureInputTypeEntity(
      name: name,
      attributes: attributes,
      validator: validator.toEntity(),
      itemSource: itemSource,
    );
  }

  factory FeatureInputTypeModel.fromEntity(FeatureInputTypeEntity entity) {
    return FeatureInputTypeModel(
      name: entity.name,
      attributes: entity.attributes,
      validator: FeatureValidatorModel.fromEntity(entity.validator),
      itemSource: entity.itemSource,
    );
  }
}

@JsonSerializable()
class FeatureValidatorModel {
  final String name;
  final Map<String, dynamic> attributes;
  final int? minValue;
  final int? maxValue;

  const FeatureValidatorModel({
    required this.name,
    required this.attributes,
    this.minValue,
    this.maxValue,
  });

  factory FeatureValidatorModel.fromJson(Map<String, dynamic> json) =>
      _$FeatureValidatorModelFromJson(json);

  Map<String, dynamic> toJson() => _$FeatureValidatorModelToJson(this);

  FeatureValidatorEntity toEntity() {
    return FeatureValidatorEntity(
      name: name,
      attributes: attributes,
      minValue: minValue,
      maxValue: maxValue,
    );
  }

  factory FeatureValidatorModel.fromEntity(FeatureValidatorEntity entity) {
    return FeatureValidatorModel(
      name: entity.name,
      attributes: entity.attributes,
      minValue: entity.minValue,
      maxValue: entity.maxValue,
    );
  }
}

@JsonSerializable()
class EditionWithFeaturesModel {
  final EditionModel edition;
  final List<EditionFeatureValueModel> featureValues;

  const EditionWithFeaturesModel({
    required this.edition,
    required this.featureValues,
  });

  factory EditionWithFeaturesModel.fromJson(Map<String, dynamic> json) =>
      _$EditionWithFeaturesModelFromJson(json);

  Map<String, dynamic> toJson() => _$EditionWithFeaturesModelToJson(this);

  EditionWithFeaturesEntity toEntity() {
    return EditionWithFeaturesEntity(
      edition: edition.toEntity(),
      featureValues: featureValues.map((e) => e.toEntity()).toList(),
    );
  }

  factory EditionWithFeaturesModel.fromEntity(
    EditionWithFeaturesEntity entity,
  ) {
    return EditionWithFeaturesModel(
      edition: EditionModel.fromEntity(entity.edition),
      featureValues: entity.featureValues
          .map(EditionFeatureValueModel.fromEntity)
          .toList(),
    );
  }
}

@JsonSerializable()
class EditionModel {
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
  final ExpiringEditionModel? expiringEdition;
  final String? seatsText;
  final String? buttonText;
  final String? buttonLink;
  final String? starterLineText;
  final String? editionColor;
  final int id;

  const EditionModel({
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

  factory EditionModel.fromJson(Map<String, dynamic> json) =>
      _$EditionModelFromJson(json);

  Map<String, dynamic> toJson() => _$EditionModelToJson(this);

  EditionEntity toEntity() {
    return EditionEntity(
      name: name,
      displayName: displayName,
      publicDescription: publicDescription,
      isPublished: isPublished,
      isRegistrable: isRegistrable,
      type: type,
      minimumUsersCount: minimumUsersCount,
      monthlyPrice: monthlyPrice,
      annualPrice: annualPrice,
      waitingDayAfterExpire: waitingDayAfterExpire,
      trialDayCount: trialDayCount,
      countAllowExtendTrial: countAllowExtendTrial,
      hasTrial: hasTrial,
      disableWorkspaceAfterExpire: disableWorkspaceAfterExpire,
      isMostPopular: isMostPopular,
      doNotSendVerifyEmail: doNotSendVerifyEmail,
      expiringEdition: expiringEdition?.toEntity(),
      seatsText: seatsText,
      buttonText: buttonText,
      buttonLink: buttonLink,
      starterLineText: starterLineText,
      editionColor: editionColor,
      id: id,
    );
  }

  factory EditionModel.fromEntity(EditionEntity entity) {
    return EditionModel(
      name: entity.name,
      displayName: entity.displayName,
      publicDescription: entity.publicDescription,
      isPublished: entity.isPublished,
      isRegistrable: entity.isRegistrable,
      type: entity.type,
      minimumUsersCount: entity.minimumUsersCount,
      monthlyPrice: entity.monthlyPrice,
      annualPrice: entity.annualPrice,
      waitingDayAfterExpire: entity.waitingDayAfterExpire,
      trialDayCount: entity.trialDayCount,
      countAllowExtendTrial: entity.countAllowExtendTrial,
      hasTrial: entity.hasTrial,
      disableWorkspaceAfterExpire: entity.disableWorkspaceAfterExpire,
      isMostPopular: entity.isMostPopular,
      doNotSendVerifyEmail: entity.doNotSendVerifyEmail,
      expiringEdition: entity.expiringEdition == null
          ? null
          : ExpiringEditionModel.fromEntity(entity.expiringEdition!),
      seatsText: entity.seatsText,
      buttonText: entity.buttonText,
      buttonLink: entity.buttonLink,
      starterLineText: entity.starterLineText,
      editionColor: entity.editionColor,
      id: entity.id,
    );
  }
}

@JsonSerializable()
class ExpiringEditionModel {
  final String name;
  final String displayName;
  final int id;

  const ExpiringEditionModel({
    required this.name,
    required this.displayName,
    required this.id,
  });

  factory ExpiringEditionModel.fromJson(Map<String, dynamic> json) =>
      _$ExpiringEditionModelFromJson(json);

  Map<String, dynamic> toJson() => _$ExpiringEditionModelToJson(this);

  ExpiringEditionEntity toEntity() {
    return ExpiringEditionEntity(name: name, displayName: displayName, id: id);
  }

  factory ExpiringEditionModel.fromEntity(ExpiringEditionEntity entity) {
    return ExpiringEditionModel(
      name: entity.name,
      displayName: entity.displayName,
      id: entity.id,
    );
  }
}

@JsonSerializable()
class EditionFeatureValueModel {
  final String name;
  final String value;

  const EditionFeatureValueModel({required this.name, required this.value});

  factory EditionFeatureValueModel.fromJson(Map<String, dynamic> json) =>
      _$EditionFeatureValueModelFromJson(json);

  Map<String, dynamic> toJson() => _$EditionFeatureValueModelToJson(this);

  EditionFeatureValueEntity toEntity() {
    return EditionFeatureValueEntity(name: name, value: value);
  }

  factory EditionFeatureValueModel.fromEntity(
    EditionFeatureValueEntity entity,
  ) {
    return EditionFeatureValueModel(name: entity.name, value: entity.value);
  }
}
