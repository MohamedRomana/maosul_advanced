import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
import '../models/show_product_body_model.dart';
import '../models/show_product_response_model.dart';
part 'show_product_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ShowProductApiService {
  factory ShowProductApiService(Dio dio) = _ShowProductApiService;

  @POST(ApiConstants.showService)
  Future<ShowProductResponseModel> getShowProduct(@Body() ShowProductBodyModel showProductBodyModel);
}