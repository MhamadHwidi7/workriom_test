import 'package:injectable/injectable.dart';
import 'package:workiom_technical_test/core/typedefs/result.dart';
import 'package:workiom_technical_test/core/usecases/future_usecase.dart';
import 'package:workiom_technical_test/features/auth/domain/bodies/check_tenant_availability_params.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/tenant_availability_entity.dart';
import 'package:workiom_technical_test/features/auth/domain/repos/auth_repository.dart';

@injectable
class CheckTenantAvailabilityUseCase
    extends
        FutureUseCase<TenantAvailabilityEntity, CheckTenantAvailabilityParams> {
  CheckTenantAvailabilityUseCase(this._repository);

  final BaseAuthRepository _repository;

  @override
  FutureResult<TenantAvailabilityEntity> call(
    CheckTenantAvailabilityParams body,
  ) {
    return _repository.isTenantAvailable(
      body: CheckTenantAvailabilityParams(body.tenancyName),
    );
  }
}
