import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/networking/api_constants.dart';
import '../data/models/reset_pass_request_body_model.dart';
import '../data/models/reset_pass_response_model.dart';
part 'reset_pass_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ResetPassApiService {
  factory ResetPassApiService(Dio dio, {String baseUrl}) = _ResetPassApiService;

  @POST(ApiConstants.resetPass)
  Future<ResetPassResponseModel> resetPass(@Body() ResetPassRequestBodyModel body);
}