import '../../../../../../../core/networking/api_error_model.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../apis/stores_api_services.dart';
import '../models/stores_body_model.dart';
import '../models/stores_response_model.dart';

class StoresRepo {
  final StoresApiServices _storesApiServices;

  StoresRepo(this._storesApiServices);

  Future<ApiResult<StoresResponseModel>> getStores(
    StoresBodyModel storesBodyModel,
  ) async {
    try {
      final response = await _storesApiServices.getStores(storesBodyModel);
      return ApiResult.success(response);
    } catch (error) {
      final apiError = ApiErrorModel(message: error.toString());
      return ApiResult.error(apiError);
    }
  }
}
