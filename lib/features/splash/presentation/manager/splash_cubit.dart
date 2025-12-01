import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:workiom_technical_test/core/enums/splash_status.dart';
import 'package:workiom_technical_test/core/errors/app_exceptions.dart';
import 'package:workiom_technical_test/core/params/no_params.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/get_current_login_information_entity.dart';
import 'package:workiom_technical_test/features/auth/domain/use_cases/get_current_login_information_usecase.dart';
import 'package:workiom_technical_test/features/splash/presentation/manager/splash_state.dart';

@injectable
class SplashCubit extends Cubit<SplashState> {
  SplashCubit(this._useCase) : super(const SplashState());

  final GetCurrentLoginInformationUseCase _useCase;

  Future<void> checkSession() async {
    emit(state.copyWith(status: SplashStatus.loading));

    final result = await _useCase(const NoParams());

    result.fold(
      (failure) {
        final msg = AppExceptions.getErrorMessage(failure);
        emit(state.copyWith(status: SplashStatus.error, message: msg));
      },
      (GetCurrentLoginInformation data) {
        final hasUser = data.user != null;
        final hasTenant = data.tenant != null;

        if (!hasUser && !hasTenant) {
          ///! if there is no user and not tenant → unauthenticated
          emit(state.copyWith(status: SplashStatus.unauthenticated));
        } else {
          emit(state.copyWith(status: SplashStatus.authenticated));
        }
      },
    );
  }
}
