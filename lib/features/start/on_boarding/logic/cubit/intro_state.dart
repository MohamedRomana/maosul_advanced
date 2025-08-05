import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/networking/api_error_model.dart';
part 'intro_state.freezed.dart';

@freezed
class IntroState<T> with _$IntroState<T> {
  const factory IntroState.initial() = _Initial;
  const factory IntroState.introLoading() = IntroLoading;
  const factory IntroState.introSuccess(T data) = IntroSuccess;
  const factory IntroState.introError(ApiErrorModel apiErrorModel) = IntroError;
}
