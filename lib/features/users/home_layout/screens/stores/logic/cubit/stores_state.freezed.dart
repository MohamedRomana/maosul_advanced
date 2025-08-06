// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stores_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StoresState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoresState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StoresState<$T>()';
}


}

/// @nodoc
class $StoresStateCopyWith<T,$Res>  {
$StoresStateCopyWith(StoresState<T> _, $Res Function(StoresState<T>) __);
}


/// Adds pattern-matching-related methods to [StoresState].
extension StoresStatePatterns<T> on StoresState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( StoresLoading<T> value)?  storesLoading,TResult Function( StoresSuccess<T> value)?  storesSuccess,TResult Function( StoresError<T> value)?  storesError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case StoresLoading() when storesLoading != null:
return storesLoading(_that);case StoresSuccess() when storesSuccess != null:
return storesSuccess(_that);case StoresError() when storesError != null:
return storesError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( StoresLoading<T> value)  storesLoading,required TResult Function( StoresSuccess<T> value)  storesSuccess,required TResult Function( StoresError<T> value)  storesError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case StoresLoading():
return storesLoading(_that);case StoresSuccess():
return storesSuccess(_that);case StoresError():
return storesError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( StoresLoading<T> value)?  storesLoading,TResult? Function( StoresSuccess<T> value)?  storesSuccess,TResult? Function( StoresError<T> value)?  storesError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case StoresLoading() when storesLoading != null:
return storesLoading(_that);case StoresSuccess() when storesSuccess != null:
return storesSuccess(_that);case StoresError() when storesError != null:
return storesError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  storesLoading,TResult Function( T data)?  storesSuccess,TResult Function( ApiErrorModel apiErrorModel)?  storesError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case StoresLoading() when storesLoading != null:
return storesLoading();case StoresSuccess() when storesSuccess != null:
return storesSuccess(_that.data);case StoresError() when storesError != null:
return storesError(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  storesLoading,required TResult Function( T data)  storesSuccess,required TResult Function( ApiErrorModel apiErrorModel)  storesError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case StoresLoading():
return storesLoading();case StoresSuccess():
return storesSuccess(_that.data);case StoresError():
return storesError(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  storesLoading,TResult? Function( T data)?  storesSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  storesError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case StoresLoading() when storesLoading != null:
return storesLoading();case StoresSuccess() when storesSuccess != null:
return storesSuccess(_that.data);case StoresError() when storesError != null:
return storesError(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements StoresState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StoresState<$T>.initial()';
}


}




/// @nodoc


class StoresLoading<T> implements StoresState<T> {
  const StoresLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoresLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StoresState<$T>.storesLoading()';
}


}




/// @nodoc


class StoresSuccess<T> implements StoresState<T> {
  const StoresSuccess(this.data);
  

 final  T data;

/// Create a copy of StoresState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoresSuccessCopyWith<T, StoresSuccess<T>> get copyWith => _$StoresSuccessCopyWithImpl<T, StoresSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoresSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'StoresState<$T>.storesSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $StoresSuccessCopyWith<T,$Res> implements $StoresStateCopyWith<T, $Res> {
  factory $StoresSuccessCopyWith(StoresSuccess<T> value, $Res Function(StoresSuccess<T>) _then) = _$StoresSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$StoresSuccessCopyWithImpl<T,$Res>
    implements $StoresSuccessCopyWith<T, $Res> {
  _$StoresSuccessCopyWithImpl(this._self, this._then);

  final StoresSuccess<T> _self;
  final $Res Function(StoresSuccess<T>) _then;

/// Create a copy of StoresState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(StoresSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class StoresError<T> implements StoresState<T> {
  const StoresError(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of StoresState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoresErrorCopyWith<T, StoresError<T>> get copyWith => _$StoresErrorCopyWithImpl<T, StoresError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoresError<T>&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'StoresState<$T>.storesError(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $StoresErrorCopyWith<T,$Res> implements $StoresStateCopyWith<T, $Res> {
  factory $StoresErrorCopyWith(StoresError<T> value, $Res Function(StoresError<T>) _then) = _$StoresErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$StoresErrorCopyWithImpl<T,$Res>
    implements $StoresErrorCopyWith<T, $Res> {
  _$StoresErrorCopyWithImpl(this._self, this._then);

  final StoresError<T> _self;
  final $Res Function(StoresError<T>) _then;

/// Create a copy of StoresState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(StoresError<T>(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
