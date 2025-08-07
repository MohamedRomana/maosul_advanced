import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
import '../models/add_to_cart_body_model.dart';
import '../models/add_to_cart_response_model.dart';
part 'add_to_cart_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AddToCartApiService {
  factory AddToCartApiService(Dio dio) = _AddToCartApiService;

  @POST(ApiConstants.addToCart)
  Future<AddToCartResponseModel> addToCart(@Body() AddToCartBodyModel addToCartBodyModel);
}