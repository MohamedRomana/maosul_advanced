import '../../../../../../../core/networking/api_error_model.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../apis/cart_api_service.dart';
import '../models/cart_body_model.dart';
import '../models/cart_response_model.dart';

class CartRepo {
  final CartApiService _cartApiService;
  CartRepo(this._cartApiService);

  Future<ApiResult<CartResponseModel>> getCart(
    CartBodyModel cartBodyModel,
  ) async {
    try {
      final response = await _cartApiService.getCart(cartBodyModel);
      return ApiResult.success(response);
    } catch (error) {
      final apiError = ApiErrorModel(message: error.toString());
      return ApiResult.error(apiError);
    }
  }
}
