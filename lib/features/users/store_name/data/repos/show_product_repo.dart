import '../../../../../core/networking/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../apis/show_product_api_service.dart';
import '../models/show_product_body_model.dart';
import '../models/show_product_response_model.dart';

class ShowProductRepo {
  final ShowProductApiService _showProductApiService;
  ShowProductRepo(this._showProductApiService);

  Future<ApiResult<ShowProductResponseModel>> getShowProduct(ShowProductBodyModel showProductBodyModel) async {
    try {
      final response = await _showProductApiService.getShowProduct(showProductBodyModel);
      return ApiResult.success(response);
    } catch (error) {
      final apiError = ApiErrorModel(message: error.toString());
      return ApiResult.error(apiError);
    }
  }
}