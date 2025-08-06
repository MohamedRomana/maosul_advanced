// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_name_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StoreNameState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreNameState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StoreNameState<$T>()';
}


}

/// @nodoc
class $StoreNameStateCopyWith<T,$Res>  {
$StoreNameStateCopyWith(StoreNameState<T> _, $Res Function(StoreNameState<T>) __);
}


/// Adds pattern-matching-related methods to [StoreNameState].
extension StoreNameStatePatterns<T> on StoreNameState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( StoreNameLoading<T> value)?  storeNameLoading,TResult Function( StoreNameSuccess<T> value)?  storeNameSuccess,TResult Function( StoreNameError<T> value)?  storeNameError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case StoreNameLoading() when storeNameLoading != null:
return storeNameLoading(_that);case StoreNameSuccess() when storeNameSuccess != null:
return storeNameSuccess(_that);case StoreNameError() when storeNameError != null:
return storeNameError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( StoreNameLoading<T> value)  storeNameLoading,required TResult Function( StoreNameSuccess<T> value)  storeNameSuccess,required TResult Function( StoreNameError<T> value)  storeNameError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case StoreNameLoading():
return storeNameLoading(_that);case StoreNameSuccess():
return storeNameSuccess(_that);case StoreNameError():
return storeNameError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( StoreNameLoading<T> value)?  storeNameLoading,TResult? Function( StoreNameSuccess<T> value)?  storeNameSuccess,TResult? Function( StoreNameError<T> value)?  storeNameError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case StoreNameLoading() when storeNameLoading != null:
return storeNameLoading(_that);case StoreNameSuccess() when storeNameSuccess != null:
return storeNameSuccess(_that);case StoreNameError() when storeNameError != null:
return storeNameError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  storeNameLoading,TResult Function( T data)?  storeNameSuccess,TResult Function( ApiErrorModel apiErrorModel)?  storeNameError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case StoreNameLoading() when storeNameLoading != null:
return storeNameLoading();case StoreNameSuccess() when storeNameSuccess != null:
return storeNameSuccess(_that.data);case StoreNameError() when storeNameError != null:
return storeNameError(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  storeNameLoading,required TResult Function( T data)  storeNameSuccess,required TResult Function( ApiErrorModel apiErrorModel)  storeNameError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case StoreNameLoading():
return storeNameLoading();case StoreNameSuccess():
return storeNameSuccess(_that.data);case StoreNameError():
return storeNameError(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  storeNameLoading,TResult? Function( T data)?  storeNameSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  storeNameError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case StoreNameLoading() when storeNameLoading != null:
return storeNameLoading();case StoreNameSuccess() when storeNameSuccess != null:
return storeNameSuccess(_that.data);case StoreNameError() when storeNameError != null:
return storeNameError(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements StoreNameState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StoreNameState<$T>.initial()';
}


}




/// @nodoc


class StoreNameLoading<T> implements StoreNameState<T> {
  const StoreNameLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreNameLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StoreNameState<$T>.storeNameLoading()';
}


}




/// @nodoc


class StoreNameSuccess<T> implements StoreNameState<T> {
  const StoreNameSuccess(this.data);
  

 final  T data;

/// Create a copy of StoreNameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreNameSuccessCopyWith<T, StoreNameSuccess<T>> get copyWith => _$StoreNameSuccessCopyWithImpl<T, StoreNameSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreNameSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'StoreNameState<$T>.storeNameSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $StoreNameSuccessCopyWith<T,$Res> implements $StoreNameStateCopyWith<T, $Res> {
  factory $StoreNameSuccessCopyWith(StoreNameSuccess<T> value, $Res Function(StoreNameSuccess<T>) _then) = _$StoreNameSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$StoreNameSuccessCopyWithImpl<T,$Res>
    implements $StoreNameSuccessCopyWith<T, $Res> {
  _$StoreNameSuccessCopyWithImpl(this._self, this._then);

  final StoreNameSuccess<T> _self;
  final $Res Function(StoreNameSuccess<T>) _then;

/// Create a copy of StoreNameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(StoreNameSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class StoreNameError<T> implements StoreNameState<T> {
  const StoreNameError(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of StoreNameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreNameErrorCopyWith<T, StoreNameError<T>> get copyWith => _$StoreNameErrorCopyWithImpl<T, StoreNameError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreNameError<T>&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'StoreNameState<$T>.storeNameError(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $StoreNameErrorCopyWith<T,$Res> implements $StoreNameStateCopyWith<T, $Res> {
  factory $StoreNameErrorCopyWith(StoreNameError<T> value, $Res Function(StoreNameError<T>) _then) = _$StoreNameErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$StoreNameErrorCopyWithImpl<T,$Res>
    implements $StoreNameErrorCopyWith<T, $Res> {
  _$StoreNameErrorCopyWithImpl(this._self, this._then);

  final StoreNameError<T> _self;
  final $Res Function(StoreNameError<T>) _then;

/// Create a copy of StoreNameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(StoreNameError<T>(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
