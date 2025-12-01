import 'package:dartz/dartz.dart';
import 'package:workiom_technical_test/core/errors/app_exceptions.dart';

typedef FutureResult<T> = Future<Either<AppExceptions, T>>;
typedef StreamResult<T> = Stream<Either<AppExceptions, T>>;
