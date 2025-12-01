import 'package:injectable/injectable.dart';
import 'package:workiom_technical_test/core/typedefs/result.dart';
import 'package:workiom_technical_test/core/usecases/future_usecase.dart';
import 'package:workiom_technical_test/features/auth/domain/bodies/register_tenant_body.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/register_tenant_result_entity.dart';
import 'package:workiom_technical_test/features/auth/domain/params/register_tenant_params.dart';
import 'package:workiom_technical_test/features/auth/domain/repos/auth_repository.dart';

@injectable
class RegisterTenantUseCase
    extends
        FutureUseCaseWithBody<
          RegisterTenantResultEntity,
          RegisterTenantParams,
          RegisterTenantBody
        > {
  RegisterTenantUseCase(this._repository);

  final BaseAuthRepository _repository;

  @override
  FutureResult<RegisterTenantResultEntity> call(
    RegisterTenantParams params,
    RegisterTenantBody body,
  ) {
    return _repository.registerTenant(params: params, body: body);
  }
}
