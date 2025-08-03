import 'package:dio/dio.dart';
import 'package:maosul_advanced/features/auth/forget_pass/data/models/forget_pass_request_body_model.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/networking/api_constants.dart';
import '../data/models/forget_pass_response_model.dart';
part 'forget_pass_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ForgetPassApiService {
  factory ForgetPassApiService(Dio dio, {String baseUrl}) = _ForgetPassApiService;

  @POST(ApiConstants.forgetPass)
  Future<ForgetPassResponseModel> forgetPass(@Body() ForgetPassRequestBodyModel forgetPassRequestBodyModel);
}