import 'package:injectable/injectable.dart';
import 'package:workiom_technical_test/core/params/no_params.dart';
import 'package:workiom_technical_test/core/typedefs/result.dart';
import 'package:workiom_technical_test/core/usecases/future_usecase.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/get_current_login_information_entity.dart';
import 'package:workiom_technical_test/features/auth/domain/repos/auth_repository.dart';

@injectable
class GetCurrentLoginInformationUseCase
    extends FutureUseCase<GetCurrentLoginInformation, NoParams> {
  GetCurrentLoginInformationUseCase(this._repository);

  final BaseAuthRepository _repository;

  @override
  FutureResult<GetCurrentLoginInformation> call(NoParams params) {
    return _repository.getCurrentLoginInformation();
  }
}
