import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/networking/api_error_model.dart';
part 'reset_pass_state.freezed.dart';

@freezed
class ResetPassState<T> with _$ResetPassState<T> {
  const factory ResetPassState.initial() = _Initial;
  const factory ResetPassState.resetPassLoading() = ResetPassLoading;
  const factory ResetPassState.resetPassSuccess(T data) = ResetPassSuccess;
  const factory ResetPassState.resetPassError(ApiErrorModel error) = ResetPassError;
}
