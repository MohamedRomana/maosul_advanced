import 'package:maosul_advanced/core/networking/api_result.dart';
import 'package:maosul_advanced/features/auth/otp/data/models/otp_response_model.dart';
import '../../../../../core/networking/api_error_model.dart';
import '../../apis/otp_api_service.dart';
import '../models/otp_request_body_model.dart';

class OtpRepo {
  final OtpApiService _otpApiService;

  OtpRepo(this._otpApiService);

  Future<ApiResult<OtpResponseModel>> sendOtp(
    OtpRequestBodyModel otpRequestBodyModel,
  ) async {
    try {
      final response = await _otpApiService.sendOtp(otpRequestBodyModel);
      return ApiResult.success(response);
    } catch (error) {
      final apiError = ApiErrorModel(message: error.toString());
      return ApiResult.error(apiError);
    }
  }
}
