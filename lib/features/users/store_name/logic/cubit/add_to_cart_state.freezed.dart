// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddToCartState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToCartState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddToCartState<$T>()';
}


}

/// @nodoc
class $AddToCartStateCopyWith<T,$Res>  {
$AddToCartStateCopyWith(AddToCartState<T> _, $Res Function(AddToCartState<T>) __);
}


/// Adds pattern-matching-related methods to [AddToCartState].
extension AddToCartStatePatterns<T> on AddToCartState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( ChangeCount<T> value)?  changeCount,TResult Function( AddToCartLoading<T> value)?  addToCartLoading,TResult Function( AddToCartSuccess<T> value)?  addToCartSuccess,TResult Function( AddToCartError<T> value)?  addToCartError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ChangeCount() when changeCount != null:
return changeCount(_that);case AddToCartLoading() when addToCartLoading != null:
return addToCartLoading(_that);case AddToCartSuccess() when addToCartSuccess != null:
return addToCartSuccess(_that);case AddToCartError() when addToCartError != null:
return addToCartError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( ChangeCount<T> value)  changeCount,required TResult Function( AddToCartLoading<T> value)  addToCartLoading,required TResult Function( AddToCartSuccess<T> value)  addToCartSuccess,required TResult Function( AddToCartError<T> value)  addToCartError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case ChangeCount():
return changeCount(_that);case AddToCartLoading():
return addToCartLoading(_that);case AddToCartSuccess():
return addToCartSuccess(_that);case AddToCartError():
return addToCartError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( ChangeCount<T> value)?  changeCount,TResult? Function( AddToCartLoading<T> value)?  addToCartLoading,TResult? Function( AddToCartSuccess<T> value)?  addToCartSuccess,TResult? Function( AddToCartError<T> value)?  addToCartError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ChangeCount() when changeCount != null:
return changeCount(_that);case AddToCartLoading() when addToCartLoading != null:
return addToCartLoading(_that);case AddToCartSuccess() when addToCartSuccess != null:
return addToCartSuccess(_that);case AddToCartError() when addToCartError != null:
return addToCartError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( int count)?  changeCount,TResult Function()?  addToCartLoading,TResult Function( T data)?  addToCartSuccess,TResult Function( ApiErrorModel error)?  addToCartError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ChangeCount() when changeCount != null:
return changeCount(_that.count);case AddToCartLoading() when addToCartLoading != null:
return addToCartLoading();case AddToCartSuccess() when addToCartSuccess != null:
return addToCartSuccess(_that.data);case AddToCartError() when addToCartError != null:
return addToCartError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( int count)  changeCount,required TResult Function()  addToCartLoading,required TResult Function( T data)  addToCartSuccess,required TResult Function( ApiErrorModel error)  addToCartError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case ChangeCount():
return changeCount(_that.count);case AddToCartLoading():
return addToCartLoading();case AddToCartSuccess():
return addToCartSuccess(_that.data);case AddToCartError():
return addToCartError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( int count)?  changeCount,TResult? Function()?  addToCartLoading,TResult? Function( T data)?  addToCartSuccess,TResult? Function( ApiErrorModel error)?  addToCartError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ChangeCount() when changeCount != null:
return changeCount(_that.count);case AddToCartLoading() when addToCartLoading != null:
return addToCartLoading();case AddToCartSuccess() when addToCartSuccess != null:
return addToCartSuccess(_that.data);case AddToCartError() when addToCartError != null:
return addToCartError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements AddToCartState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddToCartState<$T>.initial()';
}


}




/// @nodoc


class ChangeCount<T> implements AddToCartState<T> {
  const ChangeCount(this.count);
  

 final  int count;

/// Create a copy of AddToCartState
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
  return 'AddToCartState<$T>.changeCount(count: $count)';
}


}

/// @nodoc
abstract mixin class $ChangeCountCopyWith<T,$Res> implements $AddToCartStateCopyWith<T, $Res> {
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

/// Create a copy of AddToCartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? count = null,}) {
  return _then(ChangeCount<T>(
null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class AddToCartLoading<T> implements AddToCartState<T> {
  const AddToCartLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToCartLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddToCartState<$T>.addToCartLoading()';
}


}




/// @nodoc


class AddToCartSuccess<T> implements AddToCartState<T> {
  const AddToCartSuccess(this.data);
  

 final  T data;

/// Create a copy of AddToCartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToCartSuccessCopyWith<T, AddToCartSuccess<T>> get copyWith => _$AddToCartSuccessCopyWithImpl<T, AddToCartSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToCartSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'AddToCartState<$T>.addToCartSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $AddToCartSuccessCopyWith<T,$Res> implements $AddToCartStateCopyWith<T, $Res> {
  factory $AddToCartSuccessCopyWith(AddToCartSuccess<T> value, $Res Function(AddToCartSuccess<T>) _then) = _$AddToCartSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$AddToCartSuccessCopyWithImpl<T,$Res>
    implements $AddToCartSuccessCopyWith<T, $Res> {
  _$AddToCartSuccessCopyWithImpl(this._self, this._then);

  final AddToCartSuccess<T> _self;
  final $Res Function(AddToCartSuccess<T>) _then;

/// Create a copy of AddToCartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(AddToCartSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class AddToCartError<T> implements AddToCartState<T> {
  const AddToCartError(this.error);
  

 final  ApiErrorModel error;

/// Create a copy of AddToCartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToCartErrorCopyWith<T, AddToCartError<T>> get copyWith => _$AddToCartErrorCopyWithImpl<T, AddToCartError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToCartError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'AddToCartState<$T>.addToCartError(error: $error)';
}


}

/// @nodoc
abstract mixin class $AddToCartErrorCopyWith<T,$Res> implements $AddToCartStateCopyWith<T, $Res> {
  factory $AddToCartErrorCopyWith(AddToCartError<T> value, $Res Function(AddToCartError<T>) _then) = _$AddToCartErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel error
});




}
/// @nodoc
class _$AddToCartErrorCopyWithImpl<T,$Res>
    implements $AddToCartErrorCopyWith<T, $Res> {
  _$AddToCartErrorCopyWithImpl(this._self, this._then);

  final AddToCartError<T> _self;
  final $Res Function(AddToCartError<T>) _then;

/// Create a copy of AddToCartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(AddToCartError<T>(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
