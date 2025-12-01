import 'package:json_annotation/json_annotation.dart';

part 'error_model.g.dart';

@JsonSerializable()
class ErrorModel {
  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return _$ErrorModelFromJson(json);
  }
  factory ErrorModel.defaultError() =>
      ErrorModel(errors: ErrorDataModel.defaultError());

  final ErrorDataModel errors;

  ErrorModel({required this.errors});
}

@JsonSerializable()
class ErrorDataModel {
  ErrorDataModel(this.message);

  factory ErrorDataModel.fromJson(Map<String, dynamic> json) {
    return _$ErrorDataModelFromJson(json);
  }
  factory ErrorDataModel.defaultError() =>
      ErrorDataModel('Ops! an error occurred please try again later');
  final String message;
}
