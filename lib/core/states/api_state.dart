import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:workiom_technical_test/core/errors/app_exceptions.dart';

part 'api_state.freezed.dart';

@freezed
abstract class ApiState<T> with _$ApiState<T> {
  const factory ApiState.initial() = Initial;
  const factory ApiState.loading() = Loading;
  const factory ApiState.success(T successValue) = Success;
  const factory ApiState.failure(
    AppExceptions exception, {
    VoidCallback? reloadFunction,
  }) = Failure;
}
