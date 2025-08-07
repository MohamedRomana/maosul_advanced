// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShowProductState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowProductState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShowProductState<$T>()';
}


}

/// @nodoc
class $ShowProductStateCopyWith<T,$Res>  {
$ShowProductStateCopyWith(ShowProductState<T> _, $Res Function(ShowProductState<T>) __);
}


/// Adds pattern-matching-related methods to [ShowProductState].
extension ShowProductStatePatterns<T> on ShowProductState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( ShowProductLoading<T> value)?  showProductLoading,TResult Function( ShowProductSuccess<T> value)?  showProductSuccess,TResult Function( ShowProductError<T> value)?  showProductError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ShowProductLoading() when showProductLoading != null:
return showProductLoading(_that);case ShowProductSuccess() when showProductSuccess != null:
return showProductSuccess(_that);case ShowProductError() when showProductError != null:
return showProductError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( ShowProductLoading<T> value)  showProductLoading,required TResult Function( ShowProductSuccess<T> value)  showProductSuccess,required TResult Function( ShowProductError<T> value)  showProductError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case ShowProductLoading():
return showProductLoading(_that);case ShowProductSuccess():
return showProductSuccess(_that);case ShowProductError():
return showProductError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( ShowProductLoading<T> value)?  showProductLoading,TResult? Function( ShowProductSuccess<T> value)?  showProductSuccess,TResult? Function( ShowProductError<T> value)?  showProductError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ShowProductLoading() when showProductLoading != null:
return showProductLoading(_that);case ShowProductSuccess() when showProductSuccess != null:
return showProductSuccess(_that);case ShowProductError() when showProductError != null:
return showProductError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  showProductLoading,TResult Function( T data)?  showProductSuccess,TResult Function( ApiErrorModel error)?  showProductError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ShowProductLoading() when showProductLoading != null:
return showProductLoading();case ShowProductSuccess() when showProductSuccess != null:
return showProductSuccess(_that.data);case ShowProductError() when showProductError != null:
return showProductError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  showProductLoading,required TResult Function( T data)  showProductSuccess,required TResult Function( ApiErrorModel error)  showProductError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case ShowProductLoading():
return showProductLoading();case ShowProductSuccess():
return showProductSuccess(_that.data);case ShowProductError():
return showProductError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  showProductLoading,TResult? Function( T data)?  showProductSuccess,TResult? Function( ApiErrorModel error)?  showProductError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ShowProductLoading() when showProductLoading != null:
return showProductLoading();case ShowProductSuccess() when showProductSuccess != null:
return showProductSuccess(_that.data);case ShowProductError() when showProductError != null:
return showProductError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements ShowProductState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShowProductState<$T>.initial()';
}


}




/// @nodoc


class ShowProductLoading<T> implements ShowProductState<T> {
  const ShowProductLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowProductLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShowProductState<$T>.showProductLoading()';
}


}




/// @nodoc


class ShowProductSuccess<T> implements ShowProductState<T> {
  const ShowProductSuccess(this.data);
  

 final  T data;

/// Create a copy of ShowProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShowProductSuccessCopyWith<T, ShowProductSuccess<T>> get copyWith => _$ShowProductSuccessCopyWithImpl<T, ShowProductSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowProductSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ShowProductState<$T>.showProductSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $ShowProductSuccessCopyWith<T,$Res> implements $ShowProductStateCopyWith<T, $Res> {
  factory $ShowProductSuccessCopyWith(ShowProductSuccess<T> value, $Res Function(ShowProductSuccess<T>) _then) = _$ShowProductSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$ShowProductSuccessCopyWithImpl<T,$Res>
    implements $ShowProductSuccessCopyWith<T, $Res> {
  _$ShowProductSuccessCopyWithImpl(this._self, this._then);

  final ShowProductSuccess<T> _self;
  final $Res Function(ShowProductSuccess<T>) _then;

/// Create a copy of ShowProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(ShowProductSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class ShowProductError<T> implements ShowProductState<T> {
  const ShowProductError(this.error);
  

 final  ApiErrorModel error;

/// Create a copy of ShowProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShowProductErrorCopyWith<T, ShowProductError<T>> get copyWith => _$ShowProductErrorCopyWithImpl<T, ShowProductError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowProductError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ShowProductState<$T>.showProductError(error: $error)';
}


}

/// @nodoc
abstract mixin class $ShowProductErrorCopyWith<T,$Res> implements $ShowProductStateCopyWith<T, $Res> {
  factory $ShowProductErrorCopyWith(ShowProductError<T> value, $Res Function(ShowProductError<T>) _then) = _$ShowProductErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel error
});




}
/// @nodoc
class _$ShowProductErrorCopyWithImpl<T,$Res>
    implements $ShowProductErrorCopyWith<T, $Res> {
  _$ShowProductErrorCopyWithImpl(this._self, this._then);

  final ShowProductError<T> _self;
  final $Res Function(ShowProductError<T>) _then;

/// Create a copy of ShowProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ShowProductError<T>(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
