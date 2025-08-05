import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
import '../models/intro_body_model.dart';
import '../models/intro_response.dart';
part 'intro_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class IntroApiService {
  factory IntroApiService(Dio dio, {String baseUrl}) = _IntroApiService;

  @POST(ApiConstants.intro)
  Future<IntroResponse> getIntro(@Body() IntroBodyModel introBodyModel);
}