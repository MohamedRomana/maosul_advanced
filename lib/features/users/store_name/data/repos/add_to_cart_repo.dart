import '../../../../../core/networking/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../apis/add_to_cart_api_service.dart';
import '../models/add_to_cart_body_model.dart';
import '../models/add_to_cart_response_model.dart';

class AddToCartRepo {
  final AddToCartApiService _addToCartApiService;

  AddToCartRepo(this._addToCartApiService);

  Future<ApiResult<AddToCartResponseModel>> addToCart(AddToCartBodyModel addToCartBodyModel) async {
    try {
      final response = await _addToCartApiService.addToCart(addToCartBodyModel);
      return ApiResult.success(response);
    } catch (error) {
      final apiError = ApiErrorModel(message: error.toString());
      return ApiResult.error(apiError);
    }
  }
}