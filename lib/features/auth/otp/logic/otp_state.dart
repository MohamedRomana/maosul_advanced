import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/networking/api_error_model.dart';
part 'otp_state.freezed.dart';

@freezed
class OtpState<T> with _$OtpState<T> {
  const factory OtpState.initial() = _Initial;
  const factory OtpState.otpLoading() = OtpLoading;
  const factory OtpState.otpSuccess(T data) = OtpSuccess;
  const factory OtpState.otpError(ApiErrorModel error) = OtpError;
}
