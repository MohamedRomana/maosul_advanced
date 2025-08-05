// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intro_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IntroState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IntroState<$T>()';
}


}

/// @nodoc
class $IntroStateCopyWith<T,$Res>  {
$IntroStateCopyWith(IntroState<T> _, $Res Function(IntroState<T>) __);
}


/// Adds pattern-matching-related methods to [IntroState].
extension IntroStatePatterns<T> on IntroState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( IntroLoading<T> value)?  introLoading,TResult Function( IntroSuccess<T> value)?  introSuccess,TResult Function( IntroError<T> value)?  introError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case IntroLoading() when introLoading != null:
return introLoading(_that);case IntroSuccess() when introSuccess != null:
return introSuccess(_that);case IntroError() when introError != null:
return introError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( IntroLoading<T> value)  introLoading,required TResult Function( IntroSuccess<T> value)  introSuccess,required TResult Function( IntroError<T> value)  introError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case IntroLoading():
return introLoading(_that);case IntroSuccess():
return introSuccess(_that);case IntroError():
return introError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( IntroLoading<T> value)?  introLoading,TResult? Function( IntroSuccess<T> value)?  introSuccess,TResult? Function( IntroError<T> value)?  introError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case IntroLoading() when introLoading != null:
return introLoading(_that);case IntroSuccess() when introSuccess != null:
return introSuccess(_that);case IntroError() when introError != null:
return introError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  introLoading,TResult Function( T data)?  introSuccess,TResult Function( ApiErrorModel apiErrorModel)?  introError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case IntroLoading() when introLoading != null:
return introLoading();case IntroSuccess() when introSuccess != null:
return introSuccess(_that.data);case IntroError() when introError != null:
return introError(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  introLoading,required TResult Function( T data)  introSuccess,required TResult Function( ApiErrorModel apiErrorModel)  introError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case IntroLoading():
return introLoading();case IntroSuccess():
return introSuccess(_that.data);case IntroError():
return introError(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  introLoading,TResult? Function( T data)?  introSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  introError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case IntroLoading() when introLoading != null:
return introLoading();case IntroSuccess() when introSuccess != null:
return introSuccess(_that.data);case IntroError() when introError != null:
return introError(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements IntroState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IntroState<$T>.initial()';
}


}




/// @nodoc


class IntroLoading<T> implements IntroState<T> {
  const IntroLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IntroState<$T>.introLoading()';
}


}




/// @nodoc


class IntroSuccess<T> implements IntroState<T> {
  const IntroSuccess(this.data);
  

 final  T data;

/// Create a copy of IntroState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntroSuccessCopyWith<T, IntroSuccess<T>> get copyWith => _$IntroSuccessCopyWithImpl<T, IntroSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'IntroState<$T>.introSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $IntroSuccessCopyWith<T,$Res> implements $IntroStateCopyWith<T, $Res> {
  factory $IntroSuccessCopyWith(IntroSuccess<T> value, $Res Function(IntroSuccess<T>) _then) = _$IntroSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$IntroSuccessCopyWithImpl<T,$Res>
    implements $IntroSuccessCopyWith<T, $Res> {
  _$IntroSuccessCopyWithImpl(this._self, this._then);

  final IntroSuccess<T> _self;
  final $Res Function(IntroSuccess<T>) _then;

/// Create a copy of IntroState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(IntroSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class IntroError<T> implements IntroState<T> {
  const IntroError(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of IntroState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntroErrorCopyWith<T, IntroError<T>> get copyWith => _$IntroErrorCopyWithImpl<T, IntroError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroError<T>&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'IntroState<$T>.introError(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $IntroErrorCopyWith<T,$Res> implements $IntroStateCopyWith<T, $Res> {
  factory $IntroErrorCopyWith(IntroError<T> value, $Res Function(IntroError<T>) _then) = _$IntroErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$IntroErrorCopyWithImpl<T,$Res>
    implements $IntroErrorCopyWith<T, $Res> {
  _$IntroErrorCopyWithImpl(this._self, this._then);

  final IntroError<T> _self;
  final $Res Function(IntroError<T>) _then;

/// Create a copy of IntroState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(IntroError<T>(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
