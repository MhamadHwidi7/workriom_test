import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:workiom_technical_test/core/params/no_params.dart';
import 'package:workiom_technical_test/core/states/api_state.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/password_complexity_setting_entity.dart';
import 'package:workiom_technical_test/features/auth/domain/use_cases/get_password_complexity_setting_usecase.dart';

@injectable
class PasswordComplexitySettingCubit
    extends Cubit<ApiState<PasswordComplexitySettingEntity>> {
  PasswordComplexitySettingCubit(this._useCase)
    : super(const ApiState<PasswordComplexitySettingEntity>.initial());

  final GetPasswordComplexitySettingUseCase _useCase;

  Future<void> load() async {
    emit(const ApiState<PasswordComplexitySettingEntity>.loading());

    final result = await _useCase(const NoParams());

    result.fold(
      (failure) => emit(
        ApiState<PasswordComplexitySettingEntity>.failure(
          failure,
          reloadFunction: load,
        ),
      ),
      (data) => emit(ApiState<PasswordComplexitySettingEntity>.success(data)),
    );
  }
}
