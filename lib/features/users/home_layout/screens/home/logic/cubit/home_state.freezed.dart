// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState<$T>()';
}


}

/// @nodoc
class $HomeStateCopyWith<T,$Res>  {
$HomeStateCopyWith(HomeState<T> _, $Res Function(HomeState<T>) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns<T> on HomeState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( HomeLoading<T> value)?  homeLoading,TResult Function( HomeSuccess<T> value)?  homeSuccess,TResult Function( HomeError<T> value)?  homeError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case HomeLoading() when homeLoading != null:
return homeLoading(_that);case HomeSuccess() when homeSuccess != null:
return homeSuccess(_that);case HomeError() when homeError != null:
return homeError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( HomeLoading<T> value)  homeLoading,required TResult Function( HomeSuccess<T> value)  homeSuccess,required TResult Function( HomeError<T> value)  homeError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case HomeLoading():
return homeLoading(_that);case HomeSuccess():
return homeSuccess(_that);case HomeError():
return homeError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( HomeLoading<T> value)?  homeLoading,TResult? Function( HomeSuccess<T> value)?  homeSuccess,TResult? Function( HomeError<T> value)?  homeError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case HomeLoading() when homeLoading != null:
return homeLoading(_that);case HomeSuccess() when homeSuccess != null:
return homeSuccess(_that);case HomeError() when homeError != null:
return homeError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  homeLoading,TResult Function( T data)?  homeSuccess,TResult Function( ApiErrorModel apiErrorModel)?  homeError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case HomeLoading() when homeLoading != null:
return homeLoading();case HomeSuccess() when homeSuccess != null:
return homeSuccess(_that.data);case HomeError() when homeError != null:
return homeError(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  homeLoading,required TResult Function( T data)  homeSuccess,required TResult Function( ApiErrorModel apiErrorModel)  homeError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case HomeLoading():
return homeLoading();case HomeSuccess():
return homeSuccess(_that.data);case HomeError():
return homeError(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  homeLoading,TResult? Function( T data)?  homeSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  homeError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case HomeLoading() when homeLoading != null:
return homeLoading();case HomeSuccess() when homeSuccess != null:
return homeSuccess(_that.data);case HomeError() when homeError != null:
return homeError(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements HomeState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState<$T>.initial()';
}


}




/// @nodoc


class HomeLoading<T> implements HomeState<T> {
  const HomeLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState<$T>.homeLoading()';
}


}




/// @nodoc


class HomeSuccess<T> implements HomeState<T> {
  const HomeSuccess(this.data);
  

 final  T data;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeSuccessCopyWith<T, HomeSuccess<T>> get copyWith => _$HomeSuccessCopyWithImpl<T, HomeSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'HomeState<$T>.homeSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $HomeSuccessCopyWith<T,$Res> implements $HomeStateCopyWith<T, $Res> {
  factory $HomeSuccessCopyWith(HomeSuccess<T> value, $Res Function(HomeSuccess<T>) _then) = _$HomeSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$HomeSuccessCopyWithImpl<T,$Res>
    implements $HomeSuccessCopyWith<T, $Res> {
  _$HomeSuccessCopyWithImpl(this._self, this._then);

  final HomeSuccess<T> _self;
  final $Res Function(HomeSuccess<T>) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(HomeSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class HomeError<T> implements HomeState<T> {
  const HomeError(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeErrorCopyWith<T, HomeError<T>> get copyWith => _$HomeErrorCopyWithImpl<T, HomeError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeError<T>&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'HomeState<$T>.homeError(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $HomeErrorCopyWith<T,$Res> implements $HomeStateCopyWith<T, $Res> {
  factory $HomeErrorCopyWith(HomeError<T> value, $Res Function(HomeError<T>) _then) = _$HomeErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$HomeErrorCopyWithImpl<T,$Res>
    implements $HomeErrorCopyWith<T, $Res> {
  _$HomeErrorCopyWithImpl(this._self, this._then);

  final HomeError<T> _self;
  final $Res Function(HomeError<T>) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(HomeError<T>(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
