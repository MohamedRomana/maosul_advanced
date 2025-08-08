import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../../core/networking/api_constants.dart';
import '../data/models/cart_body_model.dart';
import '../data/models/cart_response_model.dart';
part 'cart_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class CartApiService {
  factory CartApiService(Dio dio) = _CartApiService;

  @POST(ApiConstants.showCart)
  Future<CartResponseModel> getCart(@Body() CartBodyModel cartBodyModel);
}