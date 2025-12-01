import 'package:colorful_print/colorful_print.dart';
import 'package:dartz/dartz.dart';
import 'package:workiom_technical_test/core/connection/connection_info.dart';
import 'package:workiom_technical_test/core/errors/app_exceptions.dart';
import 'package:workiom_technical_test/core/typedefs/result.dart';

FutureResult<T> handleRepositoryCalls<T>(Future<T> Function() operation) async {
  try {
    final response = await operation();

    return Right(response);
  } catch (error, stackTrace) {
    return Left(AppExceptions.getException(error, stackTrace));
  }
}

FutureResult<T> handleNetworkRepositoryCall<T>({
  required ConnectionInfo connectionInfo,
  required Future<T> Function() operation,
}) async {
  final hasConnection = await connectionInfo.isConnected;
  if (!hasConnection) {
    return const Left(AppExceptions.noInternetConnection());
  }

  try {
    final response = await operation();
    return Right(response);
  } catch (error, stackTrace) {
    printColor(error, textColor: TextColor.blue);
    return Left(AppExceptions.getException(error, stackTrace));
  }
}
