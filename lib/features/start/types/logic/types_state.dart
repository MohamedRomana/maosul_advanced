import 'package:freezed_annotation/freezed_annotation.dart';
part 'types_state.freezed.dart';

@freezed
class TypesState with _$TypesState {
  const factory TypesState.initial() = _Initial;
  const factory TypesState.typesIndex(int typesIndex) = TypesIndex;
}
