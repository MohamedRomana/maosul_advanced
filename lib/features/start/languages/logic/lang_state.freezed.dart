// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lang_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LangState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LangState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LangState()';
}


}

/// @nodoc
class $LangStateCopyWith<$Res>  {
$LangStateCopyWith(LangState _, $Res Function(LangState) __);
}


/// Adds pattern-matching-related methods to [LangState].
extension LangStatePatterns on LangState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( LangIndex value)?  langIndex,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LangIndex() when langIndex != null:
return langIndex(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( LangIndex value)  langIndex,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case LangIndex():
return langIndex(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( LangIndex value)?  langIndex,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LangIndex() when langIndex != null:
return langIndex(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( int langIndex)?  langIndex,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LangIndex() when langIndex != null:
return langIndex(_that.langIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( int langIndex)  langIndex,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case LangIndex():
return langIndex(_that.langIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( int langIndex)?  langIndex,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LangIndex() when langIndex != null:
return langIndex(_that.langIndex);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements LangState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LangState.initial()';
}


}




/// @nodoc


class LangIndex implements LangState {
  const LangIndex(this.langIndex);
  

 final  int langIndex;

/// Create a copy of LangState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LangIndexCopyWith<LangIndex> get copyWith => _$LangIndexCopyWithImpl<LangIndex>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LangIndex&&(identical(other.langIndex, langIndex) || other.langIndex == langIndex));
}


@override
int get hashCode => Object.hash(runtimeType,langIndex);

@override
String toString() {
  return 'LangState.langIndex(langIndex: $langIndex)';
}


}

/// @nodoc
abstract mixin class $LangIndexCopyWith<$Res> implements $LangStateCopyWith<$Res> {
  factory $LangIndexCopyWith(LangIndex value, $Res Function(LangIndex) _then) = _$LangIndexCopyWithImpl;
@useResult
$Res call({
 int langIndex
});




}
/// @nodoc
class _$LangIndexCopyWithImpl<$Res>
    implements $LangIndexCopyWith<$Res> {
  _$LangIndexCopyWithImpl(this._self, this._then);

  final LangIndex _self;
  final $Res Function(LangIndex) _then;

/// Create a copy of LangState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? langIndex = null,}) {
  return _then(LangIndex(
null == langIndex ? _self.langIndex : langIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
