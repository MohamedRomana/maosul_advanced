import 'package:maosul_advanced/core/networking/api_result.dart';
import 'package:maosul_advanced/features/users/home_layout/screens/home/data/models/home_response_model.dart';
import '../../../../../../../core/networking/api_error_model.dart';
import '../../apis/home_api_service.dart';
import '../models/home_request_body_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

Future<ApiResult<HomeResponseModel>> getHome(HomeRequestBodyModel homeRequestBodyModel) async {
    try {
      final response = await _homeApiService.getHome(homeRequestBodyModel);
      return ApiResult.success(response);
    } catch (error) {
      final apiError = ApiErrorModel(message: error.toString());
      return ApiResult.error(apiError);
    }
  }

}