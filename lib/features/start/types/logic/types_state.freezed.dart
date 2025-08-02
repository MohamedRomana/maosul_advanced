// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'types_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TypesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TypesState()';
}


}

/// @nodoc
class $TypesStateCopyWith<$Res>  {
$TypesStateCopyWith(TypesState _, $Res Function(TypesState) __);
}


/// Adds pattern-matching-related methods to [TypesState].
extension TypesStatePatterns on TypesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( TypesIndex value)?  typesIndex,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case TypesIndex() when typesIndex != null:
return typesIndex(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( TypesIndex value)  typesIndex,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case TypesIndex():
return typesIndex(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( TypesIndex value)?  typesIndex,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case TypesIndex() when typesIndex != null:
return typesIndex(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( int typesIndex)?  typesIndex,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case TypesIndex() when typesIndex != null:
return typesIndex(_that.typesIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( int typesIndex)  typesIndex,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case TypesIndex():
return typesIndex(_that.typesIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( int typesIndex)?  typesIndex,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case TypesIndex() when typesIndex != null:
return typesIndex(_that.typesIndex);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements TypesState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TypesState.initial()';
}


}




/// @nodoc


class TypesIndex implements TypesState {
  const TypesIndex(this.typesIndex);
  

 final  int typesIndex;

/// Create a copy of TypesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypesIndexCopyWith<TypesIndex> get copyWith => _$TypesIndexCopyWithImpl<TypesIndex>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypesIndex&&(identical(other.typesIndex, typesIndex) || other.typesIndex == typesIndex));
}


@override
int get hashCode => Object.hash(runtimeType,typesIndex);

@override
String toString() {
  return 'TypesState.typesIndex(typesIndex: $typesIndex)';
}


}

/// @nodoc
abstract mixin class $TypesIndexCopyWith<$Res> implements $TypesStateCopyWith<$Res> {
  factory $TypesIndexCopyWith(TypesIndex value, $Res Function(TypesIndex) _then) = _$TypesIndexCopyWithImpl;
@useResult
$Res call({
 int typesIndex
});




}
/// @nodoc
class _$TypesIndexCopyWithImpl<$Res>
    implements $TypesIndexCopyWith<$Res> {
  _$TypesIndexCopyWithImpl(this._self, this._then);

  final TypesIndex _self;
  final $Res Function(TypesIndex) _then;

/// Create a copy of TypesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? typesIndex = null,}) {
  return _then(TypesIndex(
null == typesIndex ? _self.typesIndex : typesIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
