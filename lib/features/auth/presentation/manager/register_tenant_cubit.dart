import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:workiom_technical_test/core/states/api_state.dart';
import 'package:workiom_technical_test/core/timezone/time_zone_service.dart';
import 'package:workiom_technical_test/features/auth/domain/bodies/register_tenant_body.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/register_tenant_result_entity.dart';
import 'package:workiom_technical_test/features/auth/domain/params/register_tenant_params.dart';
import 'package:workiom_technical_test/features/auth/domain/use_cases/register_tenant_usecase.dart';

@injectable
class RegisterTenantCubit extends Cubit<ApiState<RegisterTenantResultEntity>> {
  RegisterTenantCubit(this._useCase, this._timeZoneService)
    : super(const ApiState<RegisterTenantResultEntity>.initial());

  final RegisterTenantUseCase _useCase;
  final BaseTimeZoneService _timeZoneService;

  RegisterTenantBody? _lastBody;
  RegisterTenantParams? _lastParams;

  Future<void> registerTenant({required RegisterTenantBody body}) async {
    final tz = await _timeZoneService.getCurrentTimeZone();

    final params = RegisterTenantParams(timeZone: tz);

    _lastBody = body;
    _lastParams = params;

    emit(const ApiState.loading());

    final result = await _useCase(params, body);

    result.fold(
      (failure) => emit(ApiState.failure(failure, reloadFunction: _reloadLast)),
      (data) => emit(ApiState.success(data)),
    );
  }

  Future<void> _reloadLast() async {
    final p = _lastParams;
    final b = _lastBody;

    if (p == null || b == null) return;
    emit(const ApiState.loading());

    final result = await _useCase(p, b);

    result.fold(
      (failure) => emit(ApiState.failure(failure, reloadFunction: _reloadLast)),
      (data) => emit(ApiState.success(data)),
    );
  }
}
