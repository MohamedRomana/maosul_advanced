import 'package:dio/dio.dart';
import 'package:maosul_advanced/features/users/home_layout/screens/home/data/models/home_response_model.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../../core/networking/api_constants.dart';
import '../data/models/home_request_body_model.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @POST(ApiConstants.home)
  Future<HomeResponseModel> getHome(
    @Body() HomeRequestBodyModel homeRequestBodyModel,
  );
}
