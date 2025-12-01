import 'package:injectable/injectable.dart';
import 'package:workiom_technical_test/core/typedefs/result.dart';
import 'package:workiom_technical_test/core/usecases/future_usecase.dart';
import 'package:workiom_technical_test/features/auth/domain/bodies/authenticate_body.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/authenticate_result_entity.dart';
import 'package:workiom_technical_test/features/auth/domain/repos/auth_repository.dart';

@injectable
class AuthenticateUseCase
    extends FutureUseCase<AuthenticateResultEntity, AuthenticateBody> {
  AuthenticateUseCase(this._repository);

  final BaseAuthRepository _repository;

  @override
  FutureResult<AuthenticateResultEntity> call(AuthenticateBody body) {
    return _repository.authenticate(body);
  }
}
