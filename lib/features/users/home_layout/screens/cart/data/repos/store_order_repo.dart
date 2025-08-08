import '../../../../../../../core/networking/api_error_model.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../apis/store_order_api_service.dart';
import '../models/store_order_body_model.dart';
import '../models/store_order_response_model.dart';

class StoreOrderRepo {
  final StoreOrderApiService _storeOrderApiService;
  StoreOrderRepo(this._storeOrderApiService);
  Future<ApiResult<StoreOrderResponseModel>> storeOrder(StoreOrderBodyModel storeOrderBodyModel) async {
    try {
      final response = await _storeOrderApiService.storeOrder(storeOrderBodyModel);
      return ApiResult.success(response);
    } catch (error) {
      final apiError = ApiErrorModel(message: error.toString());
      return ApiResult.error(apiError);
    }
  }
}