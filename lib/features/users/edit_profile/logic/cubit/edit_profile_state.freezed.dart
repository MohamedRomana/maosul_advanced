// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditProfileState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProfileState<$T>()';
}


}

/// @nodoc
class $EditProfileStateCopyWith<T,$Res>  {
$EditProfileStateCopyWith(EditProfileState<T> _, $Res Function(EditProfileState<T>) __);
}


/// Adds pattern-matching-related methods to [EditProfileState].
extension EditProfileStatePatterns<T> on EditProfileState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( ChooseImageSuccess<T> value)?  chooseImageSuccess,TResult Function( RemoveImageSuccess<T> value)?  removeImageSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ChooseImageSuccess() when chooseImageSuccess != null:
return chooseImageSuccess(_that);case RemoveImageSuccess() when removeImageSuccess != null:
return removeImageSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( ChooseImageSuccess<T> value)  chooseImageSuccess,required TResult Function( RemoveImageSuccess<T> value)  removeImageSuccess,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case ChooseImageSuccess():
return chooseImageSuccess(_that);case RemoveImageSuccess():
return removeImageSuccess(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( ChooseImageSuccess<T> value)?  chooseImageSuccess,TResult? Function( RemoveImageSuccess<T> value)?  removeImageSuccess,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ChooseImageSuccess() when chooseImageSuccess != null:
return chooseImageSuccess(_that);case RemoveImageSuccess() when removeImageSuccess != null:
return removeImageSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  chooseImageSuccess,TResult Function()?  removeImageSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ChooseImageSuccess() when chooseImageSuccess != null:
return chooseImageSuccess();case RemoveImageSuccess() when removeImageSuccess != null:
return removeImageSuccess();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  chooseImageSuccess,required TResult Function()  removeImageSuccess,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case ChooseImageSuccess():
return chooseImageSuccess();case RemoveImageSuccess():
return removeImageSuccess();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  chooseImageSuccess,TResult? Function()?  removeImageSuccess,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ChooseImageSuccess() when chooseImageSuccess != null:
return chooseImageSuccess();case RemoveImageSuccess() when removeImageSuccess != null:
return removeImageSuccess();case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements EditProfileState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProfileState<$T>.initial()';
}


}




/// @nodoc


class ChooseImageSuccess<T> implements EditProfileState<T> {
  const ChooseImageSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChooseImageSuccess<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProfileState<$T>.chooseImageSuccess()';
}


}




/// @nodoc


class RemoveImageSuccess<T> implements EditProfileState<T> {
  const RemoveImageSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveImageSuccess<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProfileState<$T>.removeImageSuccess()';
}


}




// dart format on
