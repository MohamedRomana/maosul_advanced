// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_layout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeLayoutState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeLayoutState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeLayoutState()';
}


}

/// @nodoc
class $HomeLayoutStateCopyWith<$Res>  {
$HomeLayoutStateCopyWith(HomeLayoutState _, $Res Function(HomeLayoutState) __);
}


/// Adds pattern-matching-related methods to [HomeLayoutState].
extension HomeLayoutStatePatterns on HomeLayoutState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( ChangeBottomNavIndex value)?  changeBottomNavIndex,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ChangeBottomNavIndex() when changeBottomNavIndex != null:
return changeBottomNavIndex(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( ChangeBottomNavIndex value)  changeBottomNavIndex,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case ChangeBottomNavIndex():
return changeBottomNavIndex(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( ChangeBottomNavIndex value)?  changeBottomNavIndex,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ChangeBottomNavIndex() when changeBottomNavIndex != null:
return changeBottomNavIndex(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( dynamic index)?  changeBottomNavIndex,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ChangeBottomNavIndex() when changeBottomNavIndex != null:
return changeBottomNavIndex(_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( dynamic index)  changeBottomNavIndex,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case ChangeBottomNavIndex():
return changeBottomNavIndex(_that.index);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( dynamic index)?  changeBottomNavIndex,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ChangeBottomNavIndex() when changeBottomNavIndex != null:
return changeBottomNavIndex(_that.index);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeLayoutState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeLayoutState.initial()';
}


}




/// @nodoc


class ChangeBottomNavIndex implements HomeLayoutState {
  const ChangeBottomNavIndex(this.index);
  

 final  dynamic index;

/// Create a copy of HomeLayoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeBottomNavIndexCopyWith<ChangeBottomNavIndex> get copyWith => _$ChangeBottomNavIndexCopyWithImpl<ChangeBottomNavIndex>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeBottomNavIndex&&const DeepCollectionEquality().equals(other.index, index));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(index));

@override
String toString() {
  return 'HomeLayoutState.changeBottomNavIndex(index: $index)';
}


}

/// @nodoc
abstract mixin class $ChangeBottomNavIndexCopyWith<$Res> implements $HomeLayoutStateCopyWith<$Res> {
  factory $ChangeBottomNavIndexCopyWith(ChangeBottomNavIndex value, $Res Function(ChangeBottomNavIndex) _then) = _$ChangeBottomNavIndexCopyWithImpl;
@useResult
$Res call({
 dynamic index
});




}
/// @nodoc
class _$ChangeBottomNavIndexCopyWithImpl<$Res>
    implements $ChangeBottomNavIndexCopyWith<$Res> {
  _$ChangeBottomNavIndexCopyWithImpl(this._self, this._then);

  final ChangeBottomNavIndex _self;
  final $Res Function(ChangeBottomNavIndex) _then;

/// Create a copy of HomeLayoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = freezed,}) {
  return _then(ChangeBottomNavIndex(
freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
