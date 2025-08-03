// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_pass_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ForgetPassState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgetPassState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgetPassState<$T>()';
}


}

/// @nodoc
class $ForgetPassStateCopyWith<T,$Res>  {
$ForgetPassStateCopyWith(ForgetPassState<T> _, $Res Function(ForgetPassState<T>) __);
}


/// Adds pattern-matching-related methods to [ForgetPassState].
extension ForgetPassStatePatterns<T> on ForgetPassState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( ForgetPassLoading<T> value)?  forgetPassLoading,TResult Function( ForgetPassSuccess<T> value)?  forgetPassSuccess,TResult Function( ForgetPassError<T> value)?  forgetPassError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ForgetPassLoading() when forgetPassLoading != null:
return forgetPassLoading(_that);case ForgetPassSuccess() when forgetPassSuccess != null:
return forgetPassSuccess(_that);case ForgetPassError() when forgetPassError != null:
return forgetPassError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( ForgetPassLoading<T> value)  forgetPassLoading,required TResult Function( ForgetPassSuccess<T> value)  forgetPassSuccess,required TResult Function( ForgetPassError<T> value)  forgetPassError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case ForgetPassLoading():
return forgetPassLoading(_that);case ForgetPassSuccess():
return forgetPassSuccess(_that);case ForgetPassError():
return forgetPassError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( ForgetPassLoading<T> value)?  forgetPassLoading,TResult? Function( ForgetPassSuccess<T> value)?  forgetPassSuccess,TResult? Function( ForgetPassError<T> value)?  forgetPassError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ForgetPassLoading() when forgetPassLoading != null:
return forgetPassLoading(_that);case ForgetPassSuccess() when forgetPassSuccess != null:
return forgetPassSuccess(_that);case ForgetPassError() when forgetPassError != null:
return forgetPassError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  forgetPassLoading,TResult Function( T data)?  forgetPassSuccess,TResult Function( ApiErrorModel error)?  forgetPassError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ForgetPassLoading() when forgetPassLoading != null:
return forgetPassLoading();case ForgetPassSuccess() when forgetPassSuccess != null:
return forgetPassSuccess(_that.data);case ForgetPassError() when forgetPassError != null:
return forgetPassError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  forgetPassLoading,required TResult Function( T data)  forgetPassSuccess,required TResult Function( ApiErrorModel error)  forgetPassError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case ForgetPassLoading():
return forgetPassLoading();case ForgetPassSuccess():
return forgetPassSuccess(_that.data);case ForgetPassError():
return forgetPassError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  forgetPassLoading,TResult? Function( T data)?  forgetPassSuccess,TResult? Function( ApiErrorModel error)?  forgetPassError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ForgetPassLoading() when forgetPassLoading != null:
return forgetPassLoading();case ForgetPassSuccess() when forgetPassSuccess != null:
return forgetPassSuccess(_that.data);case ForgetPassError() when forgetPassError != null:
return forgetPassError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements ForgetPassState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgetPassState<$T>.initial()';
}


}




/// @nodoc


class ForgetPassLoading<T> implements ForgetPassState<T> {
  const ForgetPassLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgetPassLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgetPassState<$T>.forgetPassLoading()';
}


}




/// @nodoc


class ForgetPassSuccess<T> implements ForgetPassState<T> {
  const ForgetPassSuccess(this.data);
  

 final  T data;

/// Create a copy of ForgetPassState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgetPassSuccessCopyWith<T, ForgetPassSuccess<T>> get copyWith => _$ForgetPassSuccessCopyWithImpl<T, ForgetPassSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgetPassSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ForgetPassState<$T>.forgetPassSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $ForgetPassSuccessCopyWith<T,$Res> implements $ForgetPassStateCopyWith<T, $Res> {
  factory $ForgetPassSuccessCopyWith(ForgetPassSuccess<T> value, $Res Function(ForgetPassSuccess<T>) _then) = _$ForgetPassSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$ForgetPassSuccessCopyWithImpl<T,$Res>
    implements $ForgetPassSuccessCopyWith<T, $Res> {
  _$ForgetPassSuccessCopyWithImpl(this._self, this._then);

  final ForgetPassSuccess<T> _self;
  final $Res Function(ForgetPassSuccess<T>) _then;

/// Create a copy of ForgetPassState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(ForgetPassSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class ForgetPassError<T> implements ForgetPassState<T> {
  const ForgetPassError(this.error);
  

 final  ApiErrorModel error;

/// Create a copy of ForgetPassState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgetPassErrorCopyWith<T, ForgetPassError<T>> get copyWith => _$ForgetPassErrorCopyWithImpl<T, ForgetPassError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgetPassError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ForgetPassState<$T>.forgetPassError(error: $error)';
}


}

/// @nodoc
abstract mixin class $ForgetPassErrorCopyWith<T,$Res> implements $ForgetPassStateCopyWith<T, $Res> {
  factory $ForgetPassErrorCopyWith(ForgetPassError<T> value, $Res Function(ForgetPassError<T>) _then) = _$ForgetPassErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel error
});




}
/// @nodoc
class _$ForgetPassErrorCopyWithImpl<T,$Res>
    implements $ForgetPassErrorCopyWith<T, $Res> {
  _$ForgetPassErrorCopyWithImpl(this._self, this._then);

  final ForgetPassError<T> _self;
  final $Res Function(ForgetPassError<T>) _then;

/// Create a copy of ForgetPassState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ForgetPassError<T>(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
