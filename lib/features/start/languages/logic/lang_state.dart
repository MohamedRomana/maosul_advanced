
import 'package:freezed_annotation/freezed_annotation.dart';
part 'lang_state.freezed.dart';
@freezed
class LangState with _$LangState {
  const factory LangState.initial() = _Initial;
  const factory LangState.langIndex(int langIndex) = LangIndex;
}
