import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:workiom_technical_test/core/states/api_state.dart';
import 'package:workiom_technical_test/features/auth/domain/bodies/check_tenant_availability_params.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/tenant_availability_entity.dart';
import 'package:workiom_technical_test/features/auth/domain/use_cases/check_tenant_availability_usecase.dart';

@injectable
class TenantAvailabilityCubit
    extends Cubit<ApiState<TenantAvailabilityEntity>> {
  TenantAvailabilityCubit(this._useCase)
    : super(const ApiState<TenantAvailabilityEntity>.initial());

  final CheckTenantAvailabilityUseCase _useCase;

  CheckTenantAvailabilityParams? _lastParams;
  Timer? _debounceTimer;
  void onWorkspaceNameChanged(String value) {
    _debounceTimer?.cancel();

    final trimmed = value.trim();
    if (trimmed.isEmpty) {
      emit(const ApiState<TenantAvailabilityEntity>.initial());
      return;
    }
    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      checkTenant(trimmed);
    });
  }

  Future<void> checkTenant(String tenancyName) async {
    final params = CheckTenantAvailabilityParams(tenancyName);
    _lastParams = params;

    emit(const ApiState<TenantAvailabilityEntity>.loading());

    final result = await _useCase(params);

    result.fold(
      (failure) => emit(
        ApiState<TenantAvailabilityEntity>.failure(
          failure,
          reloadFunction: _reloadLast,
        ),
      ),
      (data) => emit(ApiState<TenantAvailabilityEntity>.success(data)),
    );
  }

  Future<void> _reloadLast() async {
    final params = _lastParams;
    if (params == null) return;
    await checkTenant(params.tenancyName);
  }

  @override
  Future<void> close() {
    _debounceTimer?.cancel();
    return super.close();
  }
}
