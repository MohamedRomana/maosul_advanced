import '../../../../../core/networking/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../apis/store_name_api_service.dart';
import '../models/store_name_body_model.dart';
import '../models/store_name_response_model.dart';

class StoreNameRepo {
  final StoreNameApiService _storeNameApiService;

  StoreNameRepo(this._storeNameApiService);

  Future<ApiResult<StoreNameResponseModel>> getStoreName(StoreNameBodyModel storeNameBodyModel) async {
    try {
      final response = await _storeNameApiService.getStoreName(storeNameBodyModel);
      return ApiResult.success(response);
    } catch (error) {
      final apiError = ApiErrorModel(message: error.toString());
      return ApiResult.error(apiError);
      
    }
  }
}
