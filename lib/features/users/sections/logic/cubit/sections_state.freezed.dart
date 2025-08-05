// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sections_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SectionsState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionsState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SectionsState<$T>()';
}


}

/// @nodoc
class $SectionsStateCopyWith<T,$Res>  {
$SectionsStateCopyWith(SectionsState<T> _, $Res Function(SectionsState<T>) __);
}


/// Adds pattern-matching-related methods to [SectionsState].
extension SectionsStatePatterns<T> on SectionsState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( SectionsLoading<T> value)?  sectionsLoading,TResult Function( SectionsSuccess<T> value)?  sectionsSuccess,TResult Function( SectionsError<T> value)?  sectionsError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SectionsLoading() when sectionsLoading != null:
return sectionsLoading(_that);case SectionsSuccess() when sectionsSuccess != null:
return sectionsSuccess(_that);case SectionsError() when sectionsError != null:
return sectionsError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( SectionsLoading<T> value)  sectionsLoading,required TResult Function( SectionsSuccess<T> value)  sectionsSuccess,required TResult Function( SectionsError<T> value)  sectionsError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SectionsLoading():
return sectionsLoading(_that);case SectionsSuccess():
return sectionsSuccess(_that);case SectionsError():
return sectionsError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( SectionsLoading<T> value)?  sectionsLoading,TResult? Function( SectionsSuccess<T> value)?  sectionsSuccess,TResult? Function( SectionsError<T> value)?  sectionsError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SectionsLoading() when sectionsLoading != null:
return sectionsLoading(_that);case SectionsSuccess() when sectionsSuccess != null:
return sectionsSuccess(_that);case SectionsError() when sectionsError != null:
return sectionsError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  sectionsLoading,TResult Function( T data)?  sectionsSuccess,TResult Function( ApiErrorModel apiErrorModel)?  sectionsError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SectionsLoading() when sectionsLoading != null:
return sectionsLoading();case SectionsSuccess() when sectionsSuccess != null:
return sectionsSuccess(_that.data);case SectionsError() when sectionsError != null:
return sectionsError(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  sectionsLoading,required TResult Function( T data)  sectionsSuccess,required TResult Function( ApiErrorModel apiErrorModel)  sectionsError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SectionsLoading():
return sectionsLoading();case SectionsSuccess():
return sectionsSuccess(_that.data);case SectionsError():
return sectionsError(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  sectionsLoading,TResult? Function( T data)?  sectionsSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  sectionsError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SectionsLoading() when sectionsLoading != null:
return sectionsLoading();case SectionsSuccess() when sectionsSuccess != null:
return sectionsSuccess(_that.data);case SectionsError() when sectionsError != null:
return sectionsError(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements SectionsState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SectionsState<$T>.initial()';
}


}




/// @nodoc


class SectionsLoading<T> implements SectionsState<T> {
  const SectionsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionsLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SectionsState<$T>.sectionsLoading()';
}


}




/// @nodoc


class SectionsSuccess<T> implements SectionsState<T> {
  const SectionsSuccess(this.data);
  

 final  T data;

/// Create a copy of SectionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SectionsSuccessCopyWith<T, SectionsSuccess<T>> get copyWith => _$SectionsSuccessCopyWithImpl<T, SectionsSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionsSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SectionsState<$T>.sectionsSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $SectionsSuccessCopyWith<T,$Res> implements $SectionsStateCopyWith<T, $Res> {
  factory $SectionsSuccessCopyWith(SectionsSuccess<T> value, $Res Function(SectionsSuccess<T>) _then) = _$SectionsSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$SectionsSuccessCopyWithImpl<T,$Res>
    implements $SectionsSuccessCopyWith<T, $Res> {
  _$SectionsSuccessCopyWithImpl(this._self, this._then);

  final SectionsSuccess<T> _self;
  final $Res Function(SectionsSuccess<T>) _then;

/// Create a copy of SectionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(SectionsSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class SectionsError<T> implements SectionsState<T> {
  const SectionsError(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of SectionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SectionsErrorCopyWith<T, SectionsError<T>> get copyWith => _$SectionsErrorCopyWithImpl<T, SectionsError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionsError<T>&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'SectionsState<$T>.sectionsError(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $SectionsErrorCopyWith<T,$Res> implements $SectionsStateCopyWith<T, $Res> {
  factory $SectionsErrorCopyWith(SectionsError<T> value, $Res Function(SectionsError<T>) _then) = _$SectionsErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$SectionsErrorCopyWithImpl<T,$Res>
    implements $SectionsErrorCopyWith<T, $Res> {
  _$SectionsErrorCopyWithImpl(this._self, this._then);

  final SectionsError<T> _self;
  final $Res Function(SectionsError<T>) _then;

/// Create a copy of SectionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(SectionsError<T>(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
