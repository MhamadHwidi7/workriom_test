import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:workiom_technical_test/core/params/no_params.dart';
import 'package:workiom_technical_test/core/states/api_state.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/get_current_login_information_entity.dart';
import 'package:workiom_technical_test/features/auth/domain/use_cases/get_current_login_information_usecase.dart';

@injectable
class CurrentLoginInformationCubit
    extends Cubit<ApiState<GetCurrentLoginInformation>> {
  CurrentLoginInformationCubit(this._useCase)
    : super(const ApiState<GetCurrentLoginInformation>.initial());

  final GetCurrentLoginInformationUseCase _useCase;

  Future<void> load() async {
    emit(const ApiState<GetCurrentLoginInformation>.loading());

    final result = await _useCase(const NoParams());

    result.fold(
      (failure) => emit(
        ApiState<GetCurrentLoginInformation>.failure(
          failure,
          reloadFunction: load,
        ),
      ),
      (data) => emit(ApiState<GetCurrentLoginInformation>.success(data)),
    );
  }
}
