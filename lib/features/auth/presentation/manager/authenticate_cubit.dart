import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:workiom_technical_test/core/errors/app_exceptions.dart';
import 'package:workiom_technical_test/core/helpers/secure_storage_helper.dart';
import 'package:workiom_technical_test/core/states/api_state.dart';
import 'package:workiom_technical_test/core/timezone/time_zone_service.dart';
import 'package:workiom_technical_test/features/auth/domain/bodies/authenticate_body.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/authenticate_result_entity.dart';
import 'package:workiom_technical_test/features/auth/domain/use_cases/authenticate_usecase.dart';

@injectable
class AuthenticateCubit extends Cubit<ApiState<AuthenticateResultEntity>> {
  AuthenticateCubit(this._useCase, this._timeZoneService)
    : super(const ApiState<AuthenticateResultEntity>.initial());

  final AuthenticateUseCase _useCase;
  final BaseTimeZoneService _timeZoneService;

  AuthenticateBody? _lastBody;

  ///! this counter for retry time and i added it due to if there is no internet connection we will retry 2 times before emitting failure state
  ///! this senario just for testing and for the best practice for this task navigate to success page after successful registeration and by default there is splash screen we check into it GetCurrentLoginInformations and here we will show the error
  ///this when open the app and no internet show a screen to no internet connection
  int _attempt = 0;
  static const int _maxAttempts = 2;
  Future<void> authenticateForTenant({
    required String email,
    required String password,
    required String tenantName,
    bool rememberClient = true,
    String? returnUrl,
    bool singleSignIn = false,
  }) async {
    final ianaTimeZone = await _timeZoneService.getCurrentTimeZone();

    final body = AuthenticateBody(
      ianaTimeZone: ianaTimeZone,
      password: password,
      rememberClient: rememberClient,
      returnUrl: returnUrl,
      singleSignIn: singleSignIn,
      tenantName: tenantName,
      userNameOrEmailAddress: email,
    );

    await authenticate(body);
  }

  Future<void> authenticate(AuthenticateBody body) async {
    _lastBody = body;
    _attempt = 0;
    await _doAuthenticate();
  }

  Future<void> _doAuthenticate() async {
    final body = _lastBody;
    if (body == null) return;
    if (_attempt >= _maxAttempts) return;

    _attempt++;

    emit(const ApiState<AuthenticateResultEntity>.loading());

    final result = await _useCase(body);

    await result.fold(
      (failure) async {
        final isNoInternet = failure.maybeWhen(
          noInternetConnection: () => true,
          orElse: () => false,
        );

        if (isNoInternet && _attempt < _maxAttempts) {
          await _doAuthenticate();
          return;
        }
        emit(
          ApiState<AuthenticateResultEntity>.failure(
            failure,
            reloadFunction: _reloadLast,
          ),
        );
      },
      (data) async {
        _attempt = 0;
        await SecureStorageHelper.persistToken(data.accessToken);
        await SecureStorageHelper.persistRefreshToken(data.refreshToken);

        emit(ApiState<AuthenticateResultEntity>.success(data));
      },
    );
  }

  Future<void> _reloadLast() async {
    final body = _lastBody;
    if (body == null) return;
    _attempt = 0;
    await _doAuthenticate();
  }
}
