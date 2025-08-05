import 'package:dio/dio.dart';
import 'package:maosul_advanced/core/networking/api_constants.dart';
import 'package:retrofit/retrofit.dart';
import '../models/sections_response_model.dart';
import '../models/sectios_body_model.dart';
part 'sections_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class SectionsApiService {
  factory SectionsApiService(Dio dio, {String baseUrl}) = _SectionsApiService;

  @GET(ApiConstants.sections)
  Future<SectionsResponseModel> getSections(@Body() SectionsBodyModel sectionsBodyModel);
}