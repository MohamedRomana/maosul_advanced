import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../../core/networking/api_constants.dart';
import '../data/models/stores_body_model.dart';
import '../data/models/stores_response_model.dart';
part 'stores_api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class StoresApiServices {
  factory StoresApiServices(Dio dio, {String baseUrl}) = _StoresApiServices;

  @POST(ApiConstants.stores)
  Future<StoresResponseModel> getStores(@Body() StoresBodyModel storesBodyModel);
}