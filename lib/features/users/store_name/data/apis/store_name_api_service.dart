import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
import '../models/store_name_body_model.dart';
import '../models/store_name_response_model.dart';
part "store_name_api_service.g.dart";

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class StoreNameApiService {
  factory StoreNameApiService(Dio dio, {String baseUrl}) = _StoreNameApiService;

  @POST(ApiConstants.storeName)
  Future<StoreNameResponseModel> getStoreName(@Body() StoreNameBodyModel storeNameBodyModel);
}