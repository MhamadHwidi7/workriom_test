import 'package:workiom_technical_test/core/typedefs/result.dart';
import 'package:workiom_technical_test/core/usecases/usecase.dart';

abstract class FutureUseCase<Type, Params> extends UseCase {
  const FutureUseCase();
  FutureResult<Type> call(Params params);
}

/// A base class for asynchronous use cases that:
/// - take **two inputs**: [Params] and [Body]
/// - return a **future result** of type [Type].
///
/// This is useful when a use case needs:
/// - a set of parameters (e.g. identifiers, flags, pagination info)
/// - and a request body (e.g. DTO/model to send to the API)
abstract class FutureUseCaseWithBody<Type, Params, Body> extends UseCase {
  const FutureUseCaseWithBody();
  FutureResult<Type> call(Params params, Body body);
}
