import 'package:dio/dio.dart';
import 'package:maosul_advanced/core/networking/api_constants.dart';
import 'package:maosul_advanced/features/auth/register/data/models/register_response_model.dart';
import 'package:retrofit/retrofit.dart';

import '../data/models/register_request_body_model.dart';
part 'register_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class RegisterApiService {
  factory RegisterApiService(Dio dio) => _RegisterApiService(dio);

  @POST(ApiConstants.register)
  Future<RegisterResponseModel> register(@Body() RegisterRequestBodyModel registerRequestBodyModel);
}
