import 'package:maosul_advanced/core/networking/api_result.dart';
import 'package:maosul_advanced/features/start/on_boarding/data/models/intro_response.dart';
import '../../../../../core/networking/api_error_model.dart';
import '../apis/intro_api_service.dart';
import '../models/intro_body_model.dart';

class IntroRepo {
  final IntroApiService _apiService;

  IntroRepo(this._apiService);

  Future<ApiResult<IntroResponse>> getIntro(IntroBodyModel introBodyModel) async {
    try {
      final response = await _apiService.getIntro(introBodyModel);
      return ApiResult.success(response);
    } catch (error) {
      final apiError = ApiErrorModel(message: error.toString());
      return ApiResult.error(apiError);
    }
  }
}
