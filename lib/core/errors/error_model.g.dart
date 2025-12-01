// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) => ErrorModel(
  errors: ErrorDataModel.fromJson(json['errors'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ErrorModelToJson(ErrorModel instance) =>
    <String, dynamic>{'errors': instance.errors};

ErrorDataModel _$ErrorDataModelFromJson(Map<String, dynamic> json) =>
    ErrorDataModel(json['message'] as String);

Map<String, dynamic> _$ErrorDataModelToJson(ErrorDataModel instance) =>
    <String, dynamic>{'message': instance.message};
