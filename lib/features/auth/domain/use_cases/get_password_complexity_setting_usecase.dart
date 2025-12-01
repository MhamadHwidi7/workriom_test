import 'package:injectable/injectable.dart';
import 'package:workiom_technical_test/core/params/no_params.dart';
import 'package:workiom_technical_test/core/typedefs/result.dart';
import 'package:workiom_technical_test/core/usecases/future_usecase.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/password_complexity_setting_entity.dart';
import 'package:workiom_technical_test/features/auth/domain/repos/auth_repository.dart';

@injectable
class GetPasswordComplexitySettingUseCase
    extends FutureUseCase<PasswordComplexitySettingEntity, NoParams> {
  GetPasswordComplexitySettingUseCase(this._repository);

  final BaseAuthRepository _repository;

  @override
  FutureResult<PasswordComplexitySettingEntity> call(NoParams params) {
    return _repository.getPasswordComplexitySetting();
  }
}
