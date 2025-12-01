// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApiState<T> implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ApiState<$T>'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ApiState<$T>()';
}


}

/// @nodoc
class $ApiStateCopyWith<T,$Res>  {
$ApiStateCopyWith(ApiState<T> _, $Res Function(ApiState<T>) __);
}


/// Adds pattern-matching-related methods to [ApiState].
extension ApiStatePatterns<T> on ApiState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial<T> value)?  initial,TResult Function( Loading<T> value)?  loading,TResult Function( Success<T> value)?  success,TResult Function( Failure<T> value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial<T> value)  initial,required TResult Function( Loading<T> value)  loading,required TResult Function( Success<T> value)  success,required TResult Function( Failure<T> value)  failure,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Loading():
return loading(_that);case Success():
return success(_that);case Failure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial<T> value)?  initial,TResult? Function( Loading<T> value)?  loading,TResult? Function( Success<T> value)?  success,TResult? Function( Failure<T> value)?  failure,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( T successValue)?  success,TResult Function( AppExceptions exception,  VoidCallback? reloadFunction)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.successValue);case Failure() when failure != null:
return failure(_that.exception,_that.reloadFunction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( T successValue)  success,required TResult Function( AppExceptions exception,  VoidCallback? reloadFunction)  failure,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Loading():
return loading();case Success():
return success(_that.successValue);case Failure():
return failure(_that.exception,_that.reloadFunction);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( T successValue)?  success,TResult? Function( AppExceptions exception,  VoidCallback? reloadFunction)?  failure,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.successValue);case Failure() when failure != null:
return failure(_that.exception,_that.reloadFunction);case _:
  return null;

}
}

}

/// @nodoc


class Initial<T> with DiagnosticableTreeMixin implements ApiState<T> {
  const Initial();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ApiState<$T>.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ApiState<$T>.initial()';
}


}




/// @nodoc


class Loading<T> with DiagnosticableTreeMixin implements ApiState<T> {
  const Loading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ApiState<$T>.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ApiState<$T>.loading()';
}


}




/// @nodoc


class Success<T> with DiagnosticableTreeMixin implements ApiState<T> {
  const Success(this.successValue);
  

 final  T successValue;

/// Create a copy of ApiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<T, Success<T>> get copyWith => _$SuccessCopyWithImpl<T, Success<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ApiState<$T>.success'))
    ..add(DiagnosticsProperty('successValue', successValue));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success<T>&&const DeepCollectionEquality().equals(other.successValue, successValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(successValue));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ApiState<$T>.success(successValue: $successValue)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<T,$Res> implements $ApiStateCopyWith<T, $Res> {
  factory $SuccessCopyWith(Success<T> value, $Res Function(Success<T>) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 T successValue
});




}
/// @nodoc
class _$SuccessCopyWithImpl<T,$Res>
    implements $SuccessCopyWith<T, $Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success<T> _self;
  final $Res Function(Success<T>) _then;

/// Create a copy of ApiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? successValue = freezed,}) {
  return _then(Success<T>(
freezed == successValue ? _self.successValue : successValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class Failure<T> with DiagnosticableTreeMixin implements ApiState<T> {
  const Failure(this.exception, {this.reloadFunction});
  

 final  AppExceptions exception;
 final  VoidCallback? reloadFunction;

/// Create a copy of ApiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<T, Failure<T>> get copyWith => _$FailureCopyWithImpl<T, Failure<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ApiState<$T>.failure'))
    ..add(DiagnosticsProperty('exception', exception))..add(DiagnosticsProperty('reloadFunction', reloadFunction));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure<T>&&(identical(other.exception, exception) || other.exception == exception)&&(identical(other.reloadFunction, reloadFunction) || other.reloadFunction == reloadFunction));
}


@override
int get hashCode => Object.hash(runtimeType,exception,reloadFunction);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ApiState<$T>.failure(exception: $exception, reloadFunction: $reloadFunction)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<T,$Res> implements $ApiStateCopyWith<T, $Res> {
  factory $FailureCopyWith(Failure<T> value, $Res Function(Failure<T>) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 AppExceptions exception, VoidCallback? reloadFunction
});


$AppExceptionsCopyWith<$Res> get exception;

}
/// @nodoc
class _$FailureCopyWithImpl<T,$Res>
    implements $FailureCopyWith<T, $Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure<T> _self;
  final $Res Function(Failure<T>) _then;

/// Create a copy of ApiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,Object? reloadFunction = freezed,}) {
  return _then(Failure<T>(
null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as AppExceptions,reloadFunction: freezed == reloadFunction ? _self.reloadFunction : reloadFunction // ignore: cast_nullable_to_non_nullable
as VoidCallback?,
  ));
}

/// Create a copy of ApiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppExceptionsCopyWith<$Res> get exception {
  
  return $AppExceptionsCopyWith<$Res>(_self.exception, (value) {
    return _then(_self.copyWith(exception: value));
  });
}
}

// dart format on
