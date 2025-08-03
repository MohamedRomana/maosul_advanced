// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_pass_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResetPassState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPassState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResetPassState<$T>()';
}


}

/// @nodoc
class $ResetPassStateCopyWith<T,$Res>  {
$ResetPassStateCopyWith(ResetPassState<T> _, $Res Function(ResetPassState<T>) __);
}


/// Adds pattern-matching-related methods to [ResetPassState].
extension ResetPassStatePatterns<T> on ResetPassState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( ResetPassLoading<T> value)?  resetPassLoading,TResult Function( ResetPassSuccess<T> value)?  resetPassSuccess,TResult Function( ResetPassError<T> value)?  resetPassError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ResetPassLoading() when resetPassLoading != null:
return resetPassLoading(_that);case ResetPassSuccess() when resetPassSuccess != null:
return resetPassSuccess(_that);case ResetPassError() when resetPassError != null:
return resetPassError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( ResetPassLoading<T> value)  resetPassLoading,required TResult Function( ResetPassSuccess<T> value)  resetPassSuccess,required TResult Function( ResetPassError<T> value)  resetPassError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case ResetPassLoading():
return resetPassLoading(_that);case ResetPassSuccess():
return resetPassSuccess(_that);case ResetPassError():
return resetPassError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( ResetPassLoading<T> value)?  resetPassLoading,TResult? Function( ResetPassSuccess<T> value)?  resetPassSuccess,TResult? Function( ResetPassError<T> value)?  resetPassError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ResetPassLoading() when resetPassLoading != null:
return resetPassLoading(_that);case ResetPassSuccess() when resetPassSuccess != null:
return resetPassSuccess(_that);case ResetPassError() when resetPassError != null:
return resetPassError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  resetPassLoading,TResult Function( T data)?  resetPassSuccess,TResult Function( ApiErrorModel error)?  resetPassError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ResetPassLoading() when resetPassLoading != null:
return resetPassLoading();case ResetPassSuccess() when resetPassSuccess != null:
return resetPassSuccess(_that.data);case ResetPassError() when resetPassError != null:
return resetPassError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  resetPassLoading,required TResult Function( T data)  resetPassSuccess,required TResult Function( ApiErrorModel error)  resetPassError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case ResetPassLoading():
return resetPassLoading();case ResetPassSuccess():
return resetPassSuccess(_that.data);case ResetPassError():
return resetPassError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  resetPassLoading,TResult? Function( T data)?  resetPassSuccess,TResult? Function( ApiErrorModel error)?  resetPassError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ResetPassLoading() when resetPassLoading != null:
return resetPassLoading();case ResetPassSuccess() when resetPassSuccess != null:
return resetPassSuccess(_that.data);case ResetPassError() when resetPassError != null:
return resetPassError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements ResetPassState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResetPassState<$T>.initial()';
}


}




/// @nodoc


class ResetPassLoading<T> implements ResetPassState<T> {
  const ResetPassLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPassLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResetPassState<$T>.resetPassLoading()';
}


}




/// @nodoc


class ResetPassSuccess<T> implements ResetPassState<T> {
  const ResetPassSuccess(this.data);
  

 final  T data;

/// Create a copy of ResetPassState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPassSuccessCopyWith<T, ResetPassSuccess<T>> get copyWith => _$ResetPassSuccessCopyWithImpl<T, ResetPassSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPassSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ResetPassState<$T>.resetPassSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $ResetPassSuccessCopyWith<T,$Res> implements $ResetPassStateCopyWith<T, $Res> {
  factory $ResetPassSuccessCopyWith(ResetPassSuccess<T> value, $Res Function(ResetPassSuccess<T>) _then) = _$ResetPassSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$ResetPassSuccessCopyWithImpl<T,$Res>
    implements $ResetPassSuccessCopyWith<T, $Res> {
  _$ResetPassSuccessCopyWithImpl(this._self, this._then);

  final ResetPassSuccess<T> _self;
  final $Res Function(ResetPassSuccess<T>) _then;

/// Create a copy of ResetPassState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(ResetPassSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class ResetPassError<T> implements ResetPassState<T> {
  const ResetPassError(this.error);
  

 final  ApiErrorModel error;

/// Create a copy of ResetPassState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPassErrorCopyWith<T, ResetPassError<T>> get copyWith => _$ResetPassErrorCopyWithImpl<T, ResetPassError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPassError<T>&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'ResetPassState<$T>.resetPassError(error: $error)';
}


}

/// @nodoc
abstract mixin class $ResetPassErrorCopyWith<T,$Res> implements $ResetPassStateCopyWith<T, $Res> {
  factory $ResetPassErrorCopyWith(ResetPassError<T> value, $Res Function(ResetPassError<T>) _then) = _$ResetPassErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel error
});




}
/// @nodoc
class _$ResetPassErrorCopyWithImpl<T,$Res>
    implements $ResetPassErrorCopyWith<T, $Res> {
  _$ResetPassErrorCopyWithImpl(this._self, this._then);

  final ResetPassError<T> _self;
  final $Res Function(ResetPassError<T>) _then;

/// Create a copy of ResetPassState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,}) {
  return _then(ResetPassError<T>(
freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
