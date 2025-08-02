import 'package:dio/dio.dart';
import 'package:maosul_advanced/core/networking/api_constants.dart';
import 'package:retrofit/retrofit.dart';

import '../models/login_requets_body_model.dart';
import '../models/login_response_model.dart';
part 'login_api_service.g.dart';
@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class LoginApiService {
  factory LoginApiService(Dio dio, {String baseUrl}) = _LoginApiService;

  @POST(ApiConstants.login)
  Future<LoginResponseModel> login(@Body() LoginRequetsBodyModel loginRequetsBodyModel);
}