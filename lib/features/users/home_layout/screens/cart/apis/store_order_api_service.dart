import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../../core/networking/api_constants.dart';
import '../data/models/store_order_body_model.dart';
import '../data/models/store_order_response_model.dart';
part 'store_order_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class StoreOrderApiService {
  factory StoreOrderApiService(Dio dio) = _StoreOrderApiService;

  @POST(ApiConstants.storeOrder)
  Future<StoreOrderResponseModel> storeOrder(@Body() StoreOrderBodyModel storeOrderBodyModel);
}