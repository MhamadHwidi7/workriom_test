import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:workiom_technical_test/core/errors/error_model.dart';
import 'package:workiom_technical_test/core/extensions/logger_extension.dart';

part 'app_exceptions.freezed.dart';

//! this class handles the exceptions throughout the app so that i dont know all the errors from the backend to handle it completely
@freezed
abstract class AppExceptions with _$AppExceptions implements Exception {
  const factory AppExceptions.requestCancelled() = RequestCancelled;
  const factory AppExceptions.canceledByUser() = CanceledByUser;
  const factory AppExceptions.badRequest(String reason) = BadRequest;
  const factory AppExceptions.unauthorizedRequest(String reason) =
      UnauthorizedRequest;
  const factory AppExceptions.forbidden(String reason) = Forbidden;
  const factory AppExceptions.notFound(String reason) = NotFound;
  const factory AppExceptions.methodNotAllowed() = MethodNotAllowed;
  const factory AppExceptions.requestTimeout() = RequestTimeout;
  const factory AppExceptions.sendTimeout() = SendTimeout;
  const factory AppExceptions.unprocessableEntity(String reason) =
      UnprocessableEntity;
  const factory AppExceptions.conflict() = Conflict;
  const factory AppExceptions.internalServerError() = InternalServerError;
  const factory AppExceptions.serviceUnavailable() = ServiceUnavailable;
  const factory AppExceptions.noInternetConnection() = NoInternetConnection;
  const factory AppExceptions.formatException() = _FormatException;
  const factory AppExceptions.unableToProcess() = UnableToProcess;
  const factory AppExceptions.defaultError(String error) = DefaultError;
  const factory AppExceptions.unexpectedError() = UnexpectedError;
  const factory AppExceptions.socketIoException(String message) =
      SocketIoException;

  // Additional exceptions
  const factory AppExceptions.tooManyRequests() = TooManyRequests;
  const factory AppExceptions.upgradeRequired() = UpgradeRequired;
  const factory AppExceptions.retryWithAuthentication() =
      RetryWithAuthentication;
  const factory AppExceptions.failedDependency() = FailedDependency;
  const factory AppExceptions.preconditionFailed() = PreconditionFailed;
  const factory AppExceptions.locked() = Locked;
  const factory AppExceptions.teapot() = Teapot; // 418 I'm a teapot

  // Extended cases
  const factory AppExceptions.notImplemented() =
      NotImplemented; // 501 Not Implemented
  const factory AppExceptions.badGateway() = BadGateway; // 502 Bad Gateway
  const factory AppExceptions.gatewayTimeout() =
      GatewayTimeout; // 504 Gateway Timeout
  const factory AppExceptions.networkAuthenticationRequired() =
      NetworkAuthenticationRequired; // 511 Network Authentication Required

  factory AppExceptions._handleDioExceptions(DioException error) {
    switch (error.type) {
      case DioExceptionType.cancel:
        return const AppExceptions.requestCancelled();
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const AppExceptions.requestTimeout();
      case DioExceptionType.unknown:
        return const AppExceptions.noInternetConnection();
      case DioExceptionType.badResponse:
        return AppExceptions._handleResponseStatusCodes(error.response);
      case DioExceptionType.badCertificate:
        return const AppExceptions.unableToProcess();
      case DioExceptionType.connectionError:
        return const AppExceptions.noInternetConnection();
    }
  }

  factory AppExceptions._handleResponseStatusCodes(Response? response) {
    ErrorModel errorModel;

    try {
      final data = response?.data;

      if (data is Map<String, dynamic>) {
        errorModel = ErrorModel.fromJson(data);
      } else {
        errorModel = ErrorModel.defaultError();
      }
    } catch (_) {
      errorModel = ErrorModel.defaultError();
    }

    final statusCode = response?.statusCode ?? 0;
    final message = errorModel.errors.message;

    switch (statusCode) {
      case 400:
        return AppExceptions.badRequest(message);
      case 401:
        return AppExceptions.unauthorizedRequest(message);
      case 403:
        return AppExceptions.forbidden(message);
      case 404:
        return AppExceptions.notFound(message);
      case 405:
        return const AppExceptions.methodNotAllowed();
      case 409:
        return const AppExceptions.conflict();
      case 408:
        return const AppExceptions.requestTimeout();
      case 422:
        return AppExceptions.unprocessableEntity(message);
      case 500:
        return const AppExceptions.internalServerError();
      case 503:
        return const AppExceptions.serviceUnavailable();
      case 418:
        return const AppExceptions.teapot();
      case 429:
        return const AppExceptions.tooManyRequests();
      case 426:
        return const AppExceptions.upgradeRequired();
      case 423:
        return const AppExceptions.locked();
      case 424:
        return const AppExceptions.failedDependency();
      case 412:
        return const AppExceptions.preconditionFailed();
      case 449:
        return const AppExceptions.retryWithAuthentication();
      case 501:
        return const AppExceptions.notImplemented();
      case 502:
        return const AppExceptions.badGateway();
      case 504:
        return const AppExceptions.gatewayTimeout();
      case 511:
        return const AppExceptions.networkAuthenticationRequired();
      default:
        return AppExceptions.defaultError(
          'Received invalid status code: $statusCode',
        );
    }
  }
  factory AppExceptions.getException(dynamic error, StackTrace stack) {
    error.toString().logE;
    stack.toString().logE;
    if (error is DioException) {
      return AppExceptions._handleDioExceptions(error);
    } else if (error is FormatException) {
      return const AppExceptions.formatException();
    } else if (error is SocketException) {
      return const AppExceptions.noInternetConnection();
    } else if (error is SocketIoException) {
      return AppExceptions.socketIoException(error.toString());
    } else {
      return const AppExceptions.unexpectedError();
    }
  }

  static String getErrorMessage(AppExceptions exception) {
    return exception.when(
      requestCancelled: () => 'Request Cancelled',
      internalServerError: () => 'Internal Server Error',
      notFound: (reason) => reason,
      serviceUnavailable: () => 'Service unavailable',
      methodNotAllowed: () => 'Method Not Allowed',
      badRequest: (message) => message,
      unauthorizedRequest: (error) => error,
      unprocessableEntity: (error) => error,
      unexpectedError: () => 'Unexpected error occurred',
      requestTimeout: () => 'Connection request timeout',
      noInternetConnection: () => 'No internet connection',
      conflict: () => 'Error due to a conflict',
      sendTimeout: () => 'Send timeout in connection with API server',
      unableToProcess: () => 'Unable to process the data',
      defaultError: (error) => error,
      formatException: () => 'Unexpected error occurred',
      forbidden: (error) => error,
      canceledByUser: () => 'Canceled By The User',
      socketIoException: (String message) => message,
      tooManyRequests: () => 'Too Many Requests - Rate limit exceeded',
      upgradeRequired: () => 'Upgrade Required - Client should upgrade',
      retryWithAuthentication: () =>
          'Retry With Authentication - Authentication required',
      failedDependency: () => 'Failed Dependency - Failure due to dependency',
      preconditionFailed: () =>
          'Precondition Failed - Precondition for request failed',
      locked: () => 'Locked - Resource is locked',
      teapot: () => 'I’m a teapot - Error 418',
      notImplemented: () =>
          'Not Implemented - Server does not support the functionality',
      badGateway: () => 'Bad Gateway - Invalid response from upstream server',
      gatewayTimeout: () =>
          'Gateway Timeout - Upstream server failed to respond',
      networkAuthenticationRequired: () =>
          'Network Authentication Required - Authentication required to access the network',
    );
  }
}
