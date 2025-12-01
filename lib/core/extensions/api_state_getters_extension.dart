import 'package:workiom_technical_test/core/errors/app_exceptions.dart';
import 'package:workiom_technical_test/core/states/api_state.dart';

extension ApiStateGetters<T> on ApiState<T> {
  bool get isInitial => this is Initial<T>;
  bool get isLoading => this is Loading<T>;
  bool get isSuccess => this is Success<T>;
  bool get isFailure => this is Failure<T>;

  T? get successValue =>
      maybeWhen(success: (value) => value, orElse: () => null);

  AppExceptions? get failureException =>
      maybeWhen(failure: (exception, _) => exception, orElse: () => null);
}
