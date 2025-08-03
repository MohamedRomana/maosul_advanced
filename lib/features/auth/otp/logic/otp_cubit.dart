import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maosul_advanced/core/networking/api_result.dart';
import '../../../../core/cache/cache_helper.dart';
import '../../../../core/networking/api_error_model.dart';
import '../data/models/otp_request_body_model.dart';
import '../data/repos/otp_repo.dart';
import 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  final OtpRepo _otpRepo;
  OtpCubit(this._otpRepo) : super(const OtpState.initial());

  String otpCode = "";

  void sendOtp() async {
    emit(const OtpState.otpLoading());
    final response = await _otpRepo.sendOtp(
      OtpRequestBodyModel(
        lang: CacheHelper.getLang(),
        userId: CacheHelper.getUserId(),
        code: otpCode,
      ),
    );
    response.when(
      success: (otpResponse) {
        if (otpResponse.key == 1) {
          emit(OtpState.otpSuccess(otpResponse));
        } else {
          emit(
            OtpState.otpError(
              ApiErrorModel(message: otpResponse.msg, key: otpResponse.key),
            ),
          );
        }
      },
      error: (apiError) {
        emit(OtpState.otpError(apiError));
      },
    );
  }
}
