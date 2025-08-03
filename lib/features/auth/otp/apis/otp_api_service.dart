import 'package:dio/dio.dart';
import 'package:maosul_advanced/core/networking/api_constants.dart';
import 'package:maosul_advanced/features/auth/otp/data/models/otp_response_model.dart';
import 'package:retrofit/retrofit.dart';
import '../data/models/otp_request_body_model.dart';
part 'otp_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class OtpApiService {
  factory OtpApiService(Dio dio) => _OtpApiService(dio);

  @POST(ApiConstants.otp)
  Future<OtpResponseModel> sendOtp(
    @Body() OtpRequestBodyModel otpRequestBodyModel,
  );
}
