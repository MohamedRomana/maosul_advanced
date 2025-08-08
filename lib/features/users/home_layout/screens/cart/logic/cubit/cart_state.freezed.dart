// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartState<$T>()';
}


}

/// @nodoc
class $CartStateCopyWith<T,$Res>  {
$CartStateCopyWith(CartState<T> _, $Res Function(CartState<T>) __);
}


/// Adds pattern-matching-related methods to [CartState].
extension CartStatePatterns<T> on CartState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( ChangeCount<T> value)?  changeCount,TResult Function( CartLoading<T> value)?  cartLoading,TResult Function( CartSuccess<T> value)?  cartSuccess,TResult Function( CartError<T> value)?  cartError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ChangeCount() when changeCount != null:
return changeCount(_that);case CartLoading() when cartLoading != null:
return cartLoading(_that);case CartSuccess() when cartSuccess != null:
return cartSuccess(_that);case CartError() when cartError != null:
return cartError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( ChangeCount<T> value)  changeCount,required TResult Function( CartLoading<T> value)  cartLoading,required TResult Function( CartSuccess<T> value)  cartSuccess,required TResult Function( CartError<T> value)  cartError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case ChangeCount():
return changeCount(_that);case CartLoading():
return cartLoading(_that);case CartSuccess():
return cartSuccess(_that);case CartError():
return cartError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( ChangeCount<T> value)?  changeCount,TResult? Function( CartLoading<T> value)?  cartLoading,TResult? Function( CartSuccess<T> value)?  cartSuccess,TResult? Function( CartError<T> value)?  cartError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ChangeCount() when changeCount != null:
return changeCount(_that);case CartLoading() when cartLoading != null:
return cartLoading(_that);case CartSuccess() when cartSuccess != null:
return cartSuccess(_that);case CartError() when cartError != null:
return cartError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( int count)?  changeCount,TResult Function()?  cartLoading,TResult Function( T data)?  cartSuccess,TResult Function( ApiErrorModel apiErrorModel)?  cartError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ChangeCount() when changeCount != null:
return changeCount(_that.count);case CartLoading() when cartLoading != null:
return cartLoading();case CartSuccess() when cartSuccess != null:
return cartSuccess(_that.data);case CartError() when cartError != null:
return cartError(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( int count)  changeCount,required TResult Function()  cartLoading,required TResult Function( T data)  cartSuccess,required TResult Function( ApiErrorModel apiErrorModel)  cartError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case ChangeCount():
return changeCount(_that.count);case CartLoading():
return cartLoading();case CartSuccess():
return cartSuccess(_that.data);case CartError():
return cartError(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( int count)?  changeCount,TResult? Function()?  cartLoading,TResult? Function( T data)?  cartSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  cartError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ChangeCount() when changeCount != null:
return changeCount(_that.count);case CartLoading() when cartLoading != null:
return cartLoading();case CartSuccess() when cartSuccess != null:
return cartSuccess(_that.data);case CartError() when cartError != null:
return cartError(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements CartState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartState<$T>.initial()';
}


}




/// @nodoc


class ChangeCount<T> implements CartState<T> {
  const ChangeCount(this.count);
  

 final  int count;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeCountCopyWith<T, ChangeCount<T>> get copyWith => _$ChangeCountCopyWithImpl<T, ChangeCount<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeCount<T>&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,count);

@override
String toString() {
  return 'CartState<$T>.changeCount(count: $count)';
}


}

/// @nodoc
abstract mixin class $ChangeCountCopyWith<T,$Res> implements $CartStateCopyWith<T, $Res> {
  factory $ChangeCountCopyWith(ChangeCount<T> value, $Res Function(ChangeCount<T>) _then) = _$ChangeCountCopyWithImpl;
@useResult
$Res call({
 int count
});




}
/// @nodoc
class _$ChangeCountCopyWithImpl<T,$Res>
    implements $ChangeCountCopyWith<T, $Res> {
  _$ChangeCountCopyWithImpl(this._self, this._then);

  final ChangeCount<T> _self;
  final $Res Function(ChangeCount<T>) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? count = null,}) {
  return _then(ChangeCount<T>(
null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CartLoading<T> implements CartState<T> {
  const CartLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartState<$T>.cartLoading()';
}


}




/// @nodoc


class CartSuccess<T> implements CartState<T> {
  const CartSuccess(this.data);
  

 final  T data;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartSuccessCopyWith<T, CartSuccess<T>> get copyWith => _$CartSuccessCopyWithImpl<T, CartSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CartState<$T>.cartSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $CartSuccessCopyWith<T,$Res> implements $CartStateCopyWith<T, $Res> {
  factory $CartSuccessCopyWith(CartSuccess<T> value, $Res Function(CartSuccess<T>) _then) = _$CartSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$CartSuccessCopyWithImpl<T,$Res>
    implements $CartSuccessCopyWith<T, $Res> {
  _$CartSuccessCopyWithImpl(this._self, this._then);

  final CartSuccess<T> _self;
  final $Res Function(CartSuccess<T>) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(CartSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class CartError<T> implements CartState<T> {
  const CartError(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartErrorCopyWith<T, CartError<T>> get copyWith => _$CartErrorCopyWithImpl<T, CartError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartError<T>&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'CartState<$T>.cartError(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $CartErrorCopyWith<T,$Res> implements $CartStateCopyWith<T, $Res> {
  factory $CartErrorCopyWith(CartError<T> value, $Res Function(CartError<T>) _then) = _$CartErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$CartErrorCopyWithImpl<T,$Res>
    implements $CartErrorCopyWith<T, $Res> {
  _$CartErrorCopyWithImpl(this._self, this._then);

  final CartError<T> _self;
  final $Res Function(CartError<T>) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(CartError<T>(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
