import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/networking/api_error_model.dart';
part 'forget_pass_state.freezed.dart';

@freezed
class ForgetPassState<T> with _$ForgetPassState<T> {
  const factory ForgetPassState.initial() = _Initial;
  const factory ForgetPassState.forgetPassLoading() = ForgetPassLoading;
  const factory ForgetPassState.forgetPassSuccess(T data) = ForgetPassSuccess;
  const factory ForgetPassState.forgetPassError(ApiErrorModel error) = ForgetPassError;
}
