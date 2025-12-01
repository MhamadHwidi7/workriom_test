import 'package:workiom_technical_test/core/usecases/usecase.dart';

abstract class NormalUseCase<Type, Params> extends UseCase {
  const NormalUseCase();
  Type call(Params params);
}
