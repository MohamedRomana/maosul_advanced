// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OtpState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpState<$T>()';
}


}

/// @nodoc
class $OtpStateCopyWith<T,$Res>  {
$OtpStateCopyWith(OtpState<T> _, $Res Function(OtpState<T>) __);
}


/// Adds pattern-matching-related methods to [OtpState].
extension OtpStatePatterns<T> on OtpState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( OtpLoading<T> value)?  otpLoading,TResult Function( OtpSuccess<T> value)?  otpSuccess,TResult Function( OtpError<T> value)?  otpError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case OtpLoading() when otpLoading != null:
return otpLoading(_that);case OtpSuccess() when otpSuccess != null:
return otpSuccess(_that);case OtpError() when otpError != null:
return otpError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( OtpLoading<T> value)  otpLoading,required TResult Function( OtpSuccess<T> value)  otpSuccess,required TResult Function( OtpError<T> value)  otpError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case OtpLoading():
return otpLoading(_that);case OtpSuccess():
return otpSuccess(_that);case OtpError():
return otpError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( OtpLoading<T> value)?  otpLoading,TResult? Function( OtpSuccess<T> value)?  otpSuccess,TResult? Function( OtpError<T> value)?  otpError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case OtpLoading() when otpLoading != null:
return otpLoading(_that);case OtpSuccess() when otpSuccess != null:
return otpSuccess(_that);case OtpError() when otpError != null:
return otpError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  otpLoading,TResult Function( T data)?  otpSuccess,TResult Function( ApiErrorModel error)?  otpError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case OtpLoading() when otpLoading != null:
return otpLoading();case OtpSuccess() when otpSuccess != null:
return otpSuccess(_that.data);case OtpError() when otpError != null:
return otpError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  otpLoading,required TResult Function( T data)  otpSuccess,required TResult Function( ApiErrorModel error)  otpError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case OtpLoading():
return otpLoading();case OtpSuccess():
return otpSuccess(_that.data);case OtpError():
return otpError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  otpLoading,TResult? Function( T data)?  otpSuccess,TResult? Function( ApiErrorModel error)?  otpError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case OtpLoading() when otpLoading != null:
return otpLoading();case OtpSuccess() when otpSuccess != null:
return otpSuccess(_that.data);case OtpError() when otpError != null:
return otpError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements OtpState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpState<$T>.initial()';
}


}




/// @nodoc


class OtpLoading<T> implements OtpState<T> {
  const OtpLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpState<$T>.otpLoading()';
}


}




/// @nodoc


class OtpSuccess<T> implements OtpState<T> {
  const OtpSuccess(this.data);
  

 final  T data;

/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpSuccessCopyWith<T, OtpSuccess<T>> get copyWith => _$OtpSuccessCopyWithImpl<T, OtpSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'OtpState<$T>.otpSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $OtpSuccessCopyWith<T,$Res> implements $OtpStateCopyWith<T, $Res> {
  factory $OtpSuccessCopyWith(OtpSuccess<T> value, $Res Function(OtpSuccess<T>) _then) = _$OtpSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$OtpSuccessCopyWithImpl<T,$Res>
    implements $OtpSuccessCopyWith<T, $Res> {
  _$OtpSuccessCopyWithImpl(this._self, this._then);

  final OtpSuccess<T> _self;
  final $Res Function(OtpSuccess<T>) _then;

/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(OtpSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class OtpError<T> implements OtpState<T> {
  const OtpError(this.error);
  

 final  ApiErrorModel error;

/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpErrorCopyWith<T, OtpError<T>> get copyWith => _$OtpErrorCopyWithImpl<T, OtpError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'OtpState<$T>.otpError(error: $error)';
}


}

/// @nodoc
abstract mixin class $OtpErrorCopyWith<T,$Res> implements $OtpStateCopyWith<T, $Res> {
  factory $OtpErrorCopyWith(OtpError<T> value, $Res Function(OtpError<T>) _then) = _$OtpErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel error
});




}
/// @nodoc
class _$OtpErrorCopyWithImpl<T,$Res>
    implements $OtpErrorCopyWith<T, $Res> {
  _$OtpErrorCopyWithImpl(this._self, this._then);

  final OtpError<T> _self;
  final $Res Function(OtpError<T>) _then;

/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(OtpError<T>(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
