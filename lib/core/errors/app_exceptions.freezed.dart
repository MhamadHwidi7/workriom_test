// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppExceptions {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppExceptions);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions()';
}


}

/// @nodoc
class $AppExceptionsCopyWith<$Res>  {
$AppExceptionsCopyWith(AppExceptions _, $Res Function(AppExceptions) __);
}


/// Adds pattern-matching-related methods to [AppExceptions].
extension AppExceptionsPatterns on AppExceptions {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RequestCancelled value)?  requestCancelled,TResult Function( CanceledByUser value)?  canceledByUser,TResult Function( BadRequest value)?  badRequest,TResult Function( UnauthorizedRequest value)?  unauthorizedRequest,TResult Function( Forbidden value)?  forbidden,TResult Function( NotFound value)?  notFound,TResult Function( MethodNotAllowed value)?  methodNotAllowed,TResult Function( RequestTimeout value)?  requestTimeout,TResult Function( SendTimeout value)?  sendTimeout,TResult Function( UnprocessableEntity value)?  unprocessableEntity,TResult Function( Conflict value)?  conflict,TResult Function( InternalServerError value)?  internalServerError,TResult Function( ServiceUnavailable value)?  serviceUnavailable,TResult Function( NoInternetConnection value)?  noInternetConnection,TResult Function( _FormatException value)?  formatException,TResult Function( UnableToProcess value)?  unableToProcess,TResult Function( DefaultError value)?  defaultError,TResult Function( UnexpectedError value)?  unexpectedError,TResult Function( SocketIoException value)?  socketIoException,TResult Function( TooManyRequests value)?  tooManyRequests,TResult Function( UpgradeRequired value)?  upgradeRequired,TResult Function( RetryWithAuthentication value)?  retryWithAuthentication,TResult Function( FailedDependency value)?  failedDependency,TResult Function( PreconditionFailed value)?  preconditionFailed,TResult Function( Locked value)?  locked,TResult Function( Teapot value)?  teapot,TResult Function( NotImplemented value)?  notImplemented,TResult Function( BadGateway value)?  badGateway,TResult Function( GatewayTimeout value)?  gatewayTimeout,TResult Function( NetworkAuthenticationRequired value)?  networkAuthenticationRequired,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RequestCancelled() when requestCancelled != null:
return requestCancelled(_that);case CanceledByUser() when canceledByUser != null:
return canceledByUser(_that);case BadRequest() when badRequest != null:
return badRequest(_that);case UnauthorizedRequest() when unauthorizedRequest != null:
return unauthorizedRequest(_that);case Forbidden() when forbidden != null:
return forbidden(_that);case NotFound() when notFound != null:
return notFound(_that);case MethodNotAllowed() when methodNotAllowed != null:
return methodNotAllowed(_that);case RequestTimeout() when requestTimeout != null:
return requestTimeout(_that);case SendTimeout() when sendTimeout != null:
return sendTimeout(_that);case UnprocessableEntity() when unprocessableEntity != null:
return unprocessableEntity(_that);case Conflict() when conflict != null:
return conflict(_that);case InternalServerError() when internalServerError != null:
return internalServerError(_that);case ServiceUnavailable() when serviceUnavailable != null:
return serviceUnavailable(_that);case NoInternetConnection() when noInternetConnection != null:
return noInternetConnection(_that);case _FormatException() when formatException != null:
return formatException(_that);case UnableToProcess() when unableToProcess != null:
return unableToProcess(_that);case DefaultError() when defaultError != null:
return defaultError(_that);case UnexpectedError() when unexpectedError != null:
return unexpectedError(_that);case SocketIoException() when socketIoException != null:
return socketIoException(_that);case TooManyRequests() when tooManyRequests != null:
return tooManyRequests(_that);case UpgradeRequired() when upgradeRequired != null:
return upgradeRequired(_that);case RetryWithAuthentication() when retryWithAuthentication != null:
return retryWithAuthentication(_that);case FailedDependency() when failedDependency != null:
return failedDependency(_that);case PreconditionFailed() when preconditionFailed != null:
return preconditionFailed(_that);case Locked() when locked != null:
return locked(_that);case Teapot() when teapot != null:
return teapot(_that);case NotImplemented() when notImplemented != null:
return notImplemented(_that);case BadGateway() when badGateway != null:
return badGateway(_that);case GatewayTimeout() when gatewayTimeout != null:
return gatewayTimeout(_that);case NetworkAuthenticationRequired() when networkAuthenticationRequired != null:
return networkAuthenticationRequired(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RequestCancelled value)  requestCancelled,required TResult Function( CanceledByUser value)  canceledByUser,required TResult Function( BadRequest value)  badRequest,required TResult Function( UnauthorizedRequest value)  unauthorizedRequest,required TResult Function( Forbidden value)  forbidden,required TResult Function( NotFound value)  notFound,required TResult Function( MethodNotAllowed value)  methodNotAllowed,required TResult Function( RequestTimeout value)  requestTimeout,required TResult Function( SendTimeout value)  sendTimeout,required TResult Function( UnprocessableEntity value)  unprocessableEntity,required TResult Function( Conflict value)  conflict,required TResult Function( InternalServerError value)  internalServerError,required TResult Function( ServiceUnavailable value)  serviceUnavailable,required TResult Function( NoInternetConnection value)  noInternetConnection,required TResult Function( _FormatException value)  formatException,required TResult Function( UnableToProcess value)  unableToProcess,required TResult Function( DefaultError value)  defaultError,required TResult Function( UnexpectedError value)  unexpectedError,required TResult Function( SocketIoException value)  socketIoException,required TResult Function( TooManyRequests value)  tooManyRequests,required TResult Function( UpgradeRequired value)  upgradeRequired,required TResult Function( RetryWithAuthentication value)  retryWithAuthentication,required TResult Function( FailedDependency value)  failedDependency,required TResult Function( PreconditionFailed value)  preconditionFailed,required TResult Function( Locked value)  locked,required TResult Function( Teapot value)  teapot,required TResult Function( NotImplemented value)  notImplemented,required TResult Function( BadGateway value)  badGateway,required TResult Function( GatewayTimeout value)  gatewayTimeout,required TResult Function( NetworkAuthenticationRequired value)  networkAuthenticationRequired,}){
final _that = this;
switch (_that) {
case RequestCancelled():
return requestCancelled(_that);case CanceledByUser():
return canceledByUser(_that);case BadRequest():
return badRequest(_that);case UnauthorizedRequest():
return unauthorizedRequest(_that);case Forbidden():
return forbidden(_that);case NotFound():
return notFound(_that);case MethodNotAllowed():
return methodNotAllowed(_that);case RequestTimeout():
return requestTimeout(_that);case SendTimeout():
return sendTimeout(_that);case UnprocessableEntity():
return unprocessableEntity(_that);case Conflict():
return conflict(_that);case InternalServerError():
return internalServerError(_that);case ServiceUnavailable():
return serviceUnavailable(_that);case NoInternetConnection():
return noInternetConnection(_that);case _FormatException():
return formatException(_that);case UnableToProcess():
return unableToProcess(_that);case DefaultError():
return defaultError(_that);case UnexpectedError():
return unexpectedError(_that);case SocketIoException():
return socketIoException(_that);case TooManyRequests():
return tooManyRequests(_that);case UpgradeRequired():
return upgradeRequired(_that);case RetryWithAuthentication():
return retryWithAuthentication(_that);case FailedDependency():
return failedDependency(_that);case PreconditionFailed():
return preconditionFailed(_that);case Locked():
return locked(_that);case Teapot():
return teapot(_that);case NotImplemented():
return notImplemented(_that);case BadGateway():
return badGateway(_that);case GatewayTimeout():
return gatewayTimeout(_that);case NetworkAuthenticationRequired():
return networkAuthenticationRequired(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RequestCancelled value)?  requestCancelled,TResult? Function( CanceledByUser value)?  canceledByUser,TResult? Function( BadRequest value)?  badRequest,TResult? Function( UnauthorizedRequest value)?  unauthorizedRequest,TResult? Function( Forbidden value)?  forbidden,TResult? Function( NotFound value)?  notFound,TResult? Function( MethodNotAllowed value)?  methodNotAllowed,TResult? Function( RequestTimeout value)?  requestTimeout,TResult? Function( SendTimeout value)?  sendTimeout,TResult? Function( UnprocessableEntity value)?  unprocessableEntity,TResult? Function( Conflict value)?  conflict,TResult? Function( InternalServerError value)?  internalServerError,TResult? Function( ServiceUnavailable value)?  serviceUnavailable,TResult? Function( NoInternetConnection value)?  noInternetConnection,TResult? Function( _FormatException value)?  formatException,TResult? Function( UnableToProcess value)?  unableToProcess,TResult? Function( DefaultError value)?  defaultError,TResult? Function( UnexpectedError value)?  unexpectedError,TResult? Function( SocketIoException value)?  socketIoException,TResult? Function( TooManyRequests value)?  tooManyRequests,TResult? Function( UpgradeRequired value)?  upgradeRequired,TResult? Function( RetryWithAuthentication value)?  retryWithAuthentication,TResult? Function( FailedDependency value)?  failedDependency,TResult? Function( PreconditionFailed value)?  preconditionFailed,TResult? Function( Locked value)?  locked,TResult? Function( Teapot value)?  teapot,TResult? Function( NotImplemented value)?  notImplemented,TResult? Function( BadGateway value)?  badGateway,TResult? Function( GatewayTimeout value)?  gatewayTimeout,TResult? Function( NetworkAuthenticationRequired value)?  networkAuthenticationRequired,}){
final _that = this;
switch (_that) {
case RequestCancelled() when requestCancelled != null:
return requestCancelled(_that);case CanceledByUser() when canceledByUser != null:
return canceledByUser(_that);case BadRequest() when badRequest != null:
return badRequest(_that);case UnauthorizedRequest() when unauthorizedRequest != null:
return unauthorizedRequest(_that);case Forbidden() when forbidden != null:
return forbidden(_that);case NotFound() when notFound != null:
return notFound(_that);case MethodNotAllowed() when methodNotAllowed != null:
return methodNotAllowed(_that);case RequestTimeout() when requestTimeout != null:
return requestTimeout(_that);case SendTimeout() when sendTimeout != null:
return sendTimeout(_that);case UnprocessableEntity() when unprocessableEntity != null:
return unprocessableEntity(_that);case Conflict() when conflict != null:
return conflict(_that);case InternalServerError() when internalServerError != null:
return internalServerError(_that);case ServiceUnavailable() when serviceUnavailable != null:
return serviceUnavailable(_that);case NoInternetConnection() when noInternetConnection != null:
return noInternetConnection(_that);case _FormatException() when formatException != null:
return formatException(_that);case UnableToProcess() when unableToProcess != null:
return unableToProcess(_that);case DefaultError() when defaultError != null:
return defaultError(_that);case UnexpectedError() when unexpectedError != null:
return unexpectedError(_that);case SocketIoException() when socketIoException != null:
return socketIoException(_that);case TooManyRequests() when tooManyRequests != null:
return tooManyRequests(_that);case UpgradeRequired() when upgradeRequired != null:
return upgradeRequired(_that);case RetryWithAuthentication() when retryWithAuthentication != null:
return retryWithAuthentication(_that);case FailedDependency() when failedDependency != null:
return failedDependency(_that);case PreconditionFailed() when preconditionFailed != null:
return preconditionFailed(_that);case Locked() when locked != null:
return locked(_that);case Teapot() when teapot != null:
return teapot(_that);case NotImplemented() when notImplemented != null:
return notImplemented(_that);case BadGateway() when badGateway != null:
return badGateway(_that);case GatewayTimeout() when gatewayTimeout != null:
return gatewayTimeout(_that);case NetworkAuthenticationRequired() when networkAuthenticationRequired != null:
return networkAuthenticationRequired(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  requestCancelled,TResult Function()?  canceledByUser,TResult Function( String reason)?  badRequest,TResult Function( String reason)?  unauthorizedRequest,TResult Function( String reason)?  forbidden,TResult Function( String reason)?  notFound,TResult Function()?  methodNotAllowed,TResult Function()?  requestTimeout,TResult Function()?  sendTimeout,TResult Function( String reason)?  unprocessableEntity,TResult Function()?  conflict,TResult Function()?  internalServerError,TResult Function()?  serviceUnavailable,TResult Function()?  noInternetConnection,TResult Function()?  formatException,TResult Function()?  unableToProcess,TResult Function( String error)?  defaultError,TResult Function()?  unexpectedError,TResult Function( String message)?  socketIoException,TResult Function()?  tooManyRequests,TResult Function()?  upgradeRequired,TResult Function()?  retryWithAuthentication,TResult Function()?  failedDependency,TResult Function()?  preconditionFailed,TResult Function()?  locked,TResult Function()?  teapot,TResult Function()?  notImplemented,TResult Function()?  badGateway,TResult Function()?  gatewayTimeout,TResult Function()?  networkAuthenticationRequired,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RequestCancelled() when requestCancelled != null:
return requestCancelled();case CanceledByUser() when canceledByUser != null:
return canceledByUser();case BadRequest() when badRequest != null:
return badRequest(_that.reason);case UnauthorizedRequest() when unauthorizedRequest != null:
return unauthorizedRequest(_that.reason);case Forbidden() when forbidden != null:
return forbidden(_that.reason);case NotFound() when notFound != null:
return notFound(_that.reason);case MethodNotAllowed() when methodNotAllowed != null:
return methodNotAllowed();case RequestTimeout() when requestTimeout != null:
return requestTimeout();case SendTimeout() when sendTimeout != null:
return sendTimeout();case UnprocessableEntity() when unprocessableEntity != null:
return unprocessableEntity(_that.reason);case Conflict() when conflict != null:
return conflict();case InternalServerError() when internalServerError != null:
return internalServerError();case ServiceUnavailable() when serviceUnavailable != null:
return serviceUnavailable();case NoInternetConnection() when noInternetConnection != null:
return noInternetConnection();case _FormatException() when formatException != null:
return formatException();case UnableToProcess() when unableToProcess != null:
return unableToProcess();case DefaultError() when defaultError != null:
return defaultError(_that.error);case UnexpectedError() when unexpectedError != null:
return unexpectedError();case SocketIoException() when socketIoException != null:
return socketIoException(_that.message);case TooManyRequests() when tooManyRequests != null:
return tooManyRequests();case UpgradeRequired() when upgradeRequired != null:
return upgradeRequired();case RetryWithAuthentication() when retryWithAuthentication != null:
return retryWithAuthentication();case FailedDependency() when failedDependency != null:
return failedDependency();case PreconditionFailed() when preconditionFailed != null:
return preconditionFailed();case Locked() when locked != null:
return locked();case Teapot() when teapot != null:
return teapot();case NotImplemented() when notImplemented != null:
return notImplemented();case BadGateway() when badGateway != null:
return badGateway();case GatewayTimeout() when gatewayTimeout != null:
return gatewayTimeout();case NetworkAuthenticationRequired() when networkAuthenticationRequired != null:
return networkAuthenticationRequired();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  requestCancelled,required TResult Function()  canceledByUser,required TResult Function( String reason)  badRequest,required TResult Function( String reason)  unauthorizedRequest,required TResult Function( String reason)  forbidden,required TResult Function( String reason)  notFound,required TResult Function()  methodNotAllowed,required TResult Function()  requestTimeout,required TResult Function()  sendTimeout,required TResult Function( String reason)  unprocessableEntity,required TResult Function()  conflict,required TResult Function()  internalServerError,required TResult Function()  serviceUnavailable,required TResult Function()  noInternetConnection,required TResult Function()  formatException,required TResult Function()  unableToProcess,required TResult Function( String error)  defaultError,required TResult Function()  unexpectedError,required TResult Function( String message)  socketIoException,required TResult Function()  tooManyRequests,required TResult Function()  upgradeRequired,required TResult Function()  retryWithAuthentication,required TResult Function()  failedDependency,required TResult Function()  preconditionFailed,required TResult Function()  locked,required TResult Function()  teapot,required TResult Function()  notImplemented,required TResult Function()  badGateway,required TResult Function()  gatewayTimeout,required TResult Function()  networkAuthenticationRequired,}) {final _that = this;
switch (_that) {
case RequestCancelled():
return requestCancelled();case CanceledByUser():
return canceledByUser();case BadRequest():
return badRequest(_that.reason);case UnauthorizedRequest():
return unauthorizedRequest(_that.reason);case Forbidden():
return forbidden(_that.reason);case NotFound():
return notFound(_that.reason);case MethodNotAllowed():
return methodNotAllowed();case RequestTimeout():
return requestTimeout();case SendTimeout():
return sendTimeout();case UnprocessableEntity():
return unprocessableEntity(_that.reason);case Conflict():
return conflict();case InternalServerError():
return internalServerError();case ServiceUnavailable():
return serviceUnavailable();case NoInternetConnection():
return noInternetConnection();case _FormatException():
return formatException();case UnableToProcess():
return unableToProcess();case DefaultError():
return defaultError(_that.error);case UnexpectedError():
return unexpectedError();case SocketIoException():
return socketIoException(_that.message);case TooManyRequests():
return tooManyRequests();case UpgradeRequired():
return upgradeRequired();case RetryWithAuthentication():
return retryWithAuthentication();case FailedDependency():
return failedDependency();case PreconditionFailed():
return preconditionFailed();case Locked():
return locked();case Teapot():
return teapot();case NotImplemented():
return notImplemented();case BadGateway():
return badGateway();case GatewayTimeout():
return gatewayTimeout();case NetworkAuthenticationRequired():
return networkAuthenticationRequired();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  requestCancelled,TResult? Function()?  canceledByUser,TResult? Function( String reason)?  badRequest,TResult? Function( String reason)?  unauthorizedRequest,TResult? Function( String reason)?  forbidden,TResult? Function( String reason)?  notFound,TResult? Function()?  methodNotAllowed,TResult? Function()?  requestTimeout,TResult? Function()?  sendTimeout,TResult? Function( String reason)?  unprocessableEntity,TResult? Function()?  conflict,TResult? Function()?  internalServerError,TResult? Function()?  serviceUnavailable,TResult? Function()?  noInternetConnection,TResult? Function()?  formatException,TResult? Function()?  unableToProcess,TResult? Function( String error)?  defaultError,TResult? Function()?  unexpectedError,TResult? Function( String message)?  socketIoException,TResult? Function()?  tooManyRequests,TResult? Function()?  upgradeRequired,TResult? Function()?  retryWithAuthentication,TResult? Function()?  failedDependency,TResult? Function()?  preconditionFailed,TResult? Function()?  locked,TResult? Function()?  teapot,TResult? Function()?  notImplemented,TResult? Function()?  badGateway,TResult? Function()?  gatewayTimeout,TResult? Function()?  networkAuthenticationRequired,}) {final _that = this;
switch (_that) {
case RequestCancelled() when requestCancelled != null:
return requestCancelled();case CanceledByUser() when canceledByUser != null:
return canceledByUser();case BadRequest() when badRequest != null:
return badRequest(_that.reason);case UnauthorizedRequest() when unauthorizedRequest != null:
return unauthorizedRequest(_that.reason);case Forbidden() when forbidden != null:
return forbidden(_that.reason);case NotFound() when notFound != null:
return notFound(_that.reason);case MethodNotAllowed() when methodNotAllowed != null:
return methodNotAllowed();case RequestTimeout() when requestTimeout != null:
return requestTimeout();case SendTimeout() when sendTimeout != null:
return sendTimeout();case UnprocessableEntity() when unprocessableEntity != null:
return unprocessableEntity(_that.reason);case Conflict() when conflict != null:
return conflict();case InternalServerError() when internalServerError != null:
return internalServerError();case ServiceUnavailable() when serviceUnavailable != null:
return serviceUnavailable();case NoInternetConnection() when noInternetConnection != null:
return noInternetConnection();case _FormatException() when formatException != null:
return formatException();case UnableToProcess() when unableToProcess != null:
return unableToProcess();case DefaultError() when defaultError != null:
return defaultError(_that.error);case UnexpectedError() when unexpectedError != null:
return unexpectedError();case SocketIoException() when socketIoException != null:
return socketIoException(_that.message);case TooManyRequests() when tooManyRequests != null:
return tooManyRequests();case UpgradeRequired() when upgradeRequired != null:
return upgradeRequired();case RetryWithAuthentication() when retryWithAuthentication != null:
return retryWithAuthentication();case FailedDependency() when failedDependency != null:
return failedDependency();case PreconditionFailed() when preconditionFailed != null:
return preconditionFailed();case Locked() when locked != null:
return locked();case Teapot() when teapot != null:
return teapot();case NotImplemented() when notImplemented != null:
return notImplemented();case BadGateway() when badGateway != null:
return badGateway();case GatewayTimeout() when gatewayTimeout != null:
return gatewayTimeout();case NetworkAuthenticationRequired() when networkAuthenticationRequired != null:
return networkAuthenticationRequired();case _:
  return null;

}
}

}

/// @nodoc


class RequestCancelled implements AppExceptions {
  const RequestCancelled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestCancelled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.requestCancelled()';
}


}




/// @nodoc


class CanceledByUser implements AppExceptions {
  const CanceledByUser();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CanceledByUser);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.canceledByUser()';
}


}




/// @nodoc


class BadRequest implements AppExceptions {
  const BadRequest(this.reason);
  

 final  String reason;

/// Create a copy of AppExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BadRequestCopyWith<BadRequest> get copyWith => _$BadRequestCopyWithImpl<BadRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BadRequest&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'AppExceptions.badRequest(reason: $reason)';
}


}

/// @nodoc
abstract mixin class $BadRequestCopyWith<$Res> implements $AppExceptionsCopyWith<$Res> {
  factory $BadRequestCopyWith(BadRequest value, $Res Function(BadRequest) _then) = _$BadRequestCopyWithImpl;
@useResult
$Res call({
 String reason
});




}
/// @nodoc
class _$BadRequestCopyWithImpl<$Res>
    implements $BadRequestCopyWith<$Res> {
  _$BadRequestCopyWithImpl(this._self, this._then);

  final BadRequest _self;
  final $Res Function(BadRequest) _then;

/// Create a copy of AppExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,}) {
  return _then(BadRequest(
null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UnauthorizedRequest implements AppExceptions {
  const UnauthorizedRequest(this.reason);
  

 final  String reason;

/// Create a copy of AppExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnauthorizedRequestCopyWith<UnauthorizedRequest> get copyWith => _$UnauthorizedRequestCopyWithImpl<UnauthorizedRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnauthorizedRequest&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'AppExceptions.unauthorizedRequest(reason: $reason)';
}


}

/// @nodoc
abstract mixin class $UnauthorizedRequestCopyWith<$Res> implements $AppExceptionsCopyWith<$Res> {
  factory $UnauthorizedRequestCopyWith(UnauthorizedRequest value, $Res Function(UnauthorizedRequest) _then) = _$UnauthorizedRequestCopyWithImpl;
@useResult
$Res call({
 String reason
});




}
/// @nodoc
class _$UnauthorizedRequestCopyWithImpl<$Res>
    implements $UnauthorizedRequestCopyWith<$Res> {
  _$UnauthorizedRequestCopyWithImpl(this._self, this._then);

  final UnauthorizedRequest _self;
  final $Res Function(UnauthorizedRequest) _then;

/// Create a copy of AppExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,}) {
  return _then(UnauthorizedRequest(
null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Forbidden implements AppExceptions {
  const Forbidden(this.reason);
  

 final  String reason;

/// Create a copy of AppExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForbiddenCopyWith<Forbidden> get copyWith => _$ForbiddenCopyWithImpl<Forbidden>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Forbidden&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'AppExceptions.forbidden(reason: $reason)';
}


}

/// @nodoc
abstract mixin class $ForbiddenCopyWith<$Res> implements $AppExceptionsCopyWith<$Res> {
  factory $ForbiddenCopyWith(Forbidden value, $Res Function(Forbidden) _then) = _$ForbiddenCopyWithImpl;
@useResult
$Res call({
 String reason
});




}
/// @nodoc
class _$ForbiddenCopyWithImpl<$Res>
    implements $ForbiddenCopyWith<$Res> {
  _$ForbiddenCopyWithImpl(this._self, this._then);

  final Forbidden _self;
  final $Res Function(Forbidden) _then;

/// Create a copy of AppExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,}) {
  return _then(Forbidden(
null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class NotFound implements AppExceptions {
  const NotFound(this.reason);
  

 final  String reason;

/// Create a copy of AppExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotFoundCopyWith<NotFound> get copyWith => _$NotFoundCopyWithImpl<NotFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotFound&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'AppExceptions.notFound(reason: $reason)';
}


}

/// @nodoc
abstract mixin class $NotFoundCopyWith<$Res> implements $AppExceptionsCopyWith<$Res> {
  factory $NotFoundCopyWith(NotFound value, $Res Function(NotFound) _then) = _$NotFoundCopyWithImpl;
@useResult
$Res call({
 String reason
});




}
/// @nodoc
class _$NotFoundCopyWithImpl<$Res>
    implements $NotFoundCopyWith<$Res> {
  _$NotFoundCopyWithImpl(this._self, this._then);

  final NotFound _self;
  final $Res Function(NotFound) _then;

/// Create a copy of AppExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,}) {
  return _then(NotFound(
null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MethodNotAllowed implements AppExceptions {
  const MethodNotAllowed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MethodNotAllowed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.methodNotAllowed()';
}


}




/// @nodoc


class RequestTimeout implements AppExceptions {
  const RequestTimeout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestTimeout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.requestTimeout()';
}


}




/// @nodoc


class SendTimeout implements AppExceptions {
  const SendTimeout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendTimeout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.sendTimeout()';
}


}




/// @nodoc


class UnprocessableEntity implements AppExceptions {
  const UnprocessableEntity(this.reason);
  

 final  String reason;

/// Create a copy of AppExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnprocessableEntityCopyWith<UnprocessableEntity> get copyWith => _$UnprocessableEntityCopyWithImpl<UnprocessableEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnprocessableEntity&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'AppExceptions.unprocessableEntity(reason: $reason)';
}


}

/// @nodoc
abstract mixin class $UnprocessableEntityCopyWith<$Res> implements $AppExceptionsCopyWith<$Res> {
  factory $UnprocessableEntityCopyWith(UnprocessableEntity value, $Res Function(UnprocessableEntity) _then) = _$UnprocessableEntityCopyWithImpl;
@useResult
$Res call({
 String reason
});




}
/// @nodoc
class _$UnprocessableEntityCopyWithImpl<$Res>
    implements $UnprocessableEntityCopyWith<$Res> {
  _$UnprocessableEntityCopyWithImpl(this._self, this._then);

  final UnprocessableEntity _self;
  final $Res Function(UnprocessableEntity) _then;

/// Create a copy of AppExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,}) {
  return _then(UnprocessableEntity(
null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Conflict implements AppExceptions {
  const Conflict();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Conflict);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.conflict()';
}


}




/// @nodoc


class InternalServerError implements AppExceptions {
  const InternalServerError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InternalServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.internalServerError()';
}


}




/// @nodoc


class ServiceUnavailable implements AppExceptions {
  const ServiceUnavailable();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceUnavailable);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.serviceUnavailable()';
}


}




/// @nodoc


class NoInternetConnection implements AppExceptions {
  const NoInternetConnection();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoInternetConnection);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.noInternetConnection()';
}


}




/// @nodoc


class _FormatException implements AppExceptions {
  const _FormatException();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FormatException);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.formatException()';
}


}




/// @nodoc


class UnableToProcess implements AppExceptions {
  const UnableToProcess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnableToProcess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.unableToProcess()';
}


}




/// @nodoc


class DefaultError implements AppExceptions {
  const DefaultError(this.error);
  

 final  String error;

/// Create a copy of AppExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DefaultErrorCopyWith<DefaultError> get copyWith => _$DefaultErrorCopyWithImpl<DefaultError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DefaultError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'AppExceptions.defaultError(error: $error)';
}


}

/// @nodoc
abstract mixin class $DefaultErrorCopyWith<$Res> implements $AppExceptionsCopyWith<$Res> {
  factory $DefaultErrorCopyWith(DefaultError value, $Res Function(DefaultError) _then) = _$DefaultErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$DefaultErrorCopyWithImpl<$Res>
    implements $DefaultErrorCopyWith<$Res> {
  _$DefaultErrorCopyWithImpl(this._self, this._then);

  final DefaultError _self;
  final $Res Function(DefaultError) _then;

/// Create a copy of AppExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(DefaultError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UnexpectedError implements AppExceptions {
  const UnexpectedError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnexpectedError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.unexpectedError()';
}


}




/// @nodoc


class SocketIoException implements AppExceptions {
  const SocketIoException(this.message);
  

 final  String message;

/// Create a copy of AppExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocketIoExceptionCopyWith<SocketIoException> get copyWith => _$SocketIoExceptionCopyWithImpl<SocketIoException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocketIoException&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppExceptions.socketIoException(message: $message)';
}


}

/// @nodoc
abstract mixin class $SocketIoExceptionCopyWith<$Res> implements $AppExceptionsCopyWith<$Res> {
  factory $SocketIoExceptionCopyWith(SocketIoException value, $Res Function(SocketIoException) _then) = _$SocketIoExceptionCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SocketIoExceptionCopyWithImpl<$Res>
    implements $SocketIoExceptionCopyWith<$Res> {
  _$SocketIoExceptionCopyWithImpl(this._self, this._then);

  final SocketIoException _self;
  final $Res Function(SocketIoException) _then;

/// Create a copy of AppExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(SocketIoException(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TooManyRequests implements AppExceptions {
  const TooManyRequests();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TooManyRequests);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.tooManyRequests()';
}


}




/// @nodoc


class UpgradeRequired implements AppExceptions {
  const UpgradeRequired();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpgradeRequired);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.upgradeRequired()';
}


}




/// @nodoc


class RetryWithAuthentication implements AppExceptions {
  const RetryWithAuthentication();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RetryWithAuthentication);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.retryWithAuthentication()';
}


}




/// @nodoc


class FailedDependency implements AppExceptions {
  const FailedDependency();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FailedDependency);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.failedDependency()';
}


}




/// @nodoc


class PreconditionFailed implements AppExceptions {
  const PreconditionFailed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreconditionFailed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.preconditionFailed()';
}


}




/// @nodoc


class Locked implements AppExceptions {
  const Locked();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Locked);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.locked()';
}


}




/// @nodoc


class Teapot implements AppExceptions {
  const Teapot();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Teapot);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.teapot()';
}


}




/// @nodoc


class NotImplemented implements AppExceptions {
  const NotImplemented();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotImplemented);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.notImplemented()';
}


}




/// @nodoc


class BadGateway implements AppExceptions {
  const BadGateway();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BadGateway);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.badGateway()';
}


}




/// @nodoc


class GatewayTimeout implements AppExceptions {
  const GatewayTimeout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GatewayTimeout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.gatewayTimeout()';
}


}




/// @nodoc


class NetworkAuthenticationRequired implements AppExceptions {
  const NetworkAuthenticationRequired();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkAuthenticationRequired);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppExceptions.networkAuthenticationRequired()';
}


}




// dart format on
