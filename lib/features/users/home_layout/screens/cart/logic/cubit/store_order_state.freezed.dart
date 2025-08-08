// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StoreOrderState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreOrderState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StoreOrderState<$T>()';
}


}

/// @nodoc
class $StoreOrderStateCopyWith<T,$Res>  {
$StoreOrderStateCopyWith(StoreOrderState<T> _, $Res Function(StoreOrderState<T>) __);
}


/// Adds pattern-matching-related methods to [StoreOrderState].
extension StoreOrderStatePatterns<T> on StoreOrderState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( ChangePaymentMethod<T> value)?  changePaymentMethod,TResult Function( ChangeDeliveryMethod<T> value)?  changeDeliveryMethod,TResult Function( StoreOrderLoading<T> value)?  storeOrderLoading,TResult Function( StoreOrderSuccess<T> value)?  storeOrderSuccess,TResult Function( StoreOrderError<T> value)?  storeOrderError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ChangePaymentMethod() when changePaymentMethod != null:
return changePaymentMethod(_that);case ChangeDeliveryMethod() when changeDeliveryMethod != null:
return changeDeliveryMethod(_that);case StoreOrderLoading() when storeOrderLoading != null:
return storeOrderLoading(_that);case StoreOrderSuccess() when storeOrderSuccess != null:
return storeOrderSuccess(_that);case StoreOrderError() when storeOrderError != null:
return storeOrderError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( ChangePaymentMethod<T> value)  changePaymentMethod,required TResult Function( ChangeDeliveryMethod<T> value)  changeDeliveryMethod,required TResult Function( StoreOrderLoading<T> value)  storeOrderLoading,required TResult Function( StoreOrderSuccess<T> value)  storeOrderSuccess,required TResult Function( StoreOrderError<T> value)  storeOrderError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case ChangePaymentMethod():
return changePaymentMethod(_that);case ChangeDeliveryMethod():
return changeDeliveryMethod(_that);case StoreOrderLoading():
return storeOrderLoading(_that);case StoreOrderSuccess():
return storeOrderSuccess(_that);case StoreOrderError():
return storeOrderError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( ChangePaymentMethod<T> value)?  changePaymentMethod,TResult? Function( ChangeDeliveryMethod<T> value)?  changeDeliveryMethod,TResult? Function( StoreOrderLoading<T> value)?  storeOrderLoading,TResult? Function( StoreOrderSuccess<T> value)?  storeOrderSuccess,TResult? Function( StoreOrderError<T> value)?  storeOrderError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ChangePaymentMethod() when changePaymentMethod != null:
return changePaymentMethod(_that);case ChangeDeliveryMethod() when changeDeliveryMethod != null:
return changeDeliveryMethod(_that);case StoreOrderLoading() when storeOrderLoading != null:
return storeOrderLoading(_that);case StoreOrderSuccess() when storeOrderSuccess != null:
return storeOrderSuccess(_that);case StoreOrderError() when storeOrderError != null:
return storeOrderError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( int index)?  changePaymentMethod,TResult Function( int index)?  changeDeliveryMethod,TResult Function()?  storeOrderLoading,TResult Function( T data)?  storeOrderSuccess,TResult Function( ApiErrorModel error)?  storeOrderError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ChangePaymentMethod() when changePaymentMethod != null:
return changePaymentMethod(_that.index);case ChangeDeliveryMethod() when changeDeliveryMethod != null:
return changeDeliveryMethod(_that.index);case StoreOrderLoading() when storeOrderLoading != null:
return storeOrderLoading();case StoreOrderSuccess() when storeOrderSuccess != null:
return storeOrderSuccess(_that.data);case StoreOrderError() when storeOrderError != null:
return storeOrderError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( int index)  changePaymentMethod,required TResult Function( int index)  changeDeliveryMethod,required TResult Function()  storeOrderLoading,required TResult Function( T data)  storeOrderSuccess,required TResult Function( ApiErrorModel error)  storeOrderError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case ChangePaymentMethod():
return changePaymentMethod(_that.index);case ChangeDeliveryMethod():
return changeDeliveryMethod(_that.index);case StoreOrderLoading():
return storeOrderLoading();case StoreOrderSuccess():
return storeOrderSuccess(_that.data);case StoreOrderError():
return storeOrderError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( int index)?  changePaymentMethod,TResult? Function( int index)?  changeDeliveryMethod,TResult? Function()?  storeOrderLoading,TResult? Function( T data)?  storeOrderSuccess,TResult? Function( ApiErrorModel error)?  storeOrderError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ChangePaymentMethod() when changePaymentMethod != null:
return changePaymentMethod(_that.index);case ChangeDeliveryMethod() when changeDeliveryMethod != null:
return changeDeliveryMethod(_that.index);case StoreOrderLoading() when storeOrderLoading != null:
return storeOrderLoading();case StoreOrderSuccess() when storeOrderSuccess != null:
return storeOrderSuccess(_that.data);case StoreOrderError() when storeOrderError != null:
return storeOrderError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements StoreOrderState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StoreOrderState<$T>.initial()';
}


}




/// @nodoc


class ChangePaymentMethod<T> implements StoreOrderState<T> {
  const ChangePaymentMethod(this.index);
  

 final  int index;

/// Create a copy of StoreOrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePaymentMethodCopyWith<T, ChangePaymentMethod<T>> get copyWith => _$ChangePaymentMethodCopyWithImpl<T, ChangePaymentMethod<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePaymentMethod<T>&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'StoreOrderState<$T>.changePaymentMethod(index: $index)';
}


}

/// @nodoc
abstract mixin class $ChangePaymentMethodCopyWith<T,$Res> implements $StoreOrderStateCopyWith<T, $Res> {
  factory $ChangePaymentMethodCopyWith(ChangePaymentMethod<T> value, $Res Function(ChangePaymentMethod<T>) _then) = _$ChangePaymentMethodCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$ChangePaymentMethodCopyWithImpl<T,$Res>
    implements $ChangePaymentMethodCopyWith<T, $Res> {
  _$ChangePaymentMethodCopyWithImpl(this._self, this._then);

  final ChangePaymentMethod<T> _self;
  final $Res Function(ChangePaymentMethod<T>) _then;

/// Create a copy of StoreOrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(ChangePaymentMethod<T>(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ChangeDeliveryMethod<T> implements StoreOrderState<T> {
  const ChangeDeliveryMethod(this.index);
  

 final  int index;

/// Create a copy of StoreOrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeDeliveryMethodCopyWith<T, ChangeDeliveryMethod<T>> get copyWith => _$ChangeDeliveryMethodCopyWithImpl<T, ChangeDeliveryMethod<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeDeliveryMethod<T>&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'StoreOrderState<$T>.changeDeliveryMethod(index: $index)';
}


}

/// @nodoc
abstract mixin class $ChangeDeliveryMethodCopyWith<T,$Res> implements $StoreOrderStateCopyWith<T, $Res> {
  factory $ChangeDeliveryMethodCopyWith(ChangeDeliveryMethod<T> value, $Res Function(ChangeDeliveryMethod<T>) _then) = _$ChangeDeliveryMethodCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$ChangeDeliveryMethodCopyWithImpl<T,$Res>
    implements $ChangeDeliveryMethodCopyWith<T, $Res> {
  _$ChangeDeliveryMethodCopyWithImpl(this._self, this._then);

  final ChangeDeliveryMethod<T> _self;
  final $Res Function(ChangeDeliveryMethod<T>) _then;

/// Create a copy of StoreOrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(ChangeDeliveryMethod<T>(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class StoreOrderLoading<T> implements StoreOrderState<T> {
  const StoreOrderLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreOrderLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StoreOrderState<$T>.storeOrderLoading()';
}


}




/// @nodoc


class StoreOrderSuccess<T> implements StoreOrderState<T> {
  const StoreOrderSuccess(this.data);
  

 final  T data;

/// Create a copy of StoreOrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreOrderSuccessCopyWith<T, StoreOrderSuccess<T>> get copyWith => _$StoreOrderSuccessCopyWithImpl<T, StoreOrderSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreOrderSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'StoreOrderState<$T>.storeOrderSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $StoreOrderSuccessCopyWith<T,$Res> implements $StoreOrderStateCopyWith<T, $Res> {
  factory $StoreOrderSuccessCopyWith(StoreOrderSuccess<T> value, $Res Function(StoreOrderSuccess<T>) _then) = _$StoreOrderSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$StoreOrderSuccessCopyWithImpl<T,$Res>
    implements $StoreOrderSuccessCopyWith<T, $Res> {
  _$StoreOrderSuccessCopyWithImpl(this._self, this._then);

  final StoreOrderSuccess<T> _self;
  final $Res Function(StoreOrderSuccess<T>) _then;

/// Create a copy of StoreOrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(StoreOrderSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class StoreOrderError<T> implements StoreOrderState<T> {
  const StoreOrderError(this.error);
  

 final  ApiErrorModel error;

/// Create a copy of StoreOrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreOrderErrorCopyWith<T, StoreOrderError<T>> get copyWith => _$StoreOrderErrorCopyWithImpl<T, StoreOrderError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreOrderError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'StoreOrderState<$T>.storeOrderError(error: $error)';
}


}

/// @nodoc
abstract mixin class $StoreOrderErrorCopyWith<T,$Res> implements $StoreOrderStateCopyWith<T, $Res> {
  factory $StoreOrderErrorCopyWith(StoreOrderError<T> value, $Res Function(StoreOrderError<T>) _then) = _$StoreOrderErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel error
});




}
/// @nodoc
class _$StoreOrderErrorCopyWithImpl<T,$Res>
    implements $StoreOrderErrorCopyWith<T, $Res> {
  _$StoreOrderErrorCopyWithImpl(this._self, this._then);

  final StoreOrderError<T> _self;
  final $Res Function(StoreOrderError<T>) _then;

/// Create a copy of StoreOrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(StoreOrderError<T>(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
