import 'package:maosul_advanced/core/networking/api_result.dart';
import 'package:maosul_advanced/features/users/sections/data/models/sections_response_model.dart';
import '../../../../../core/networking/api_error_model.dart';
import '../apis/sections_api_service.dart';
import '../models/sectios_body_model.dart';

class SectionsRepo {
  final SectionsApiService _sectionsApiService;

  SectionsRepo(this._sectionsApiService);

  Future<ApiResult<SectionsResponseModel>> getSections(SectionsBodyModel sectionsBodyModel) async {
    try {
      final response = await _sectionsApiService.getSections(sectionsBodyModel);
      return ApiResult.success(response);
    } catch (error) {
      final apiError = ApiErrorModel(message: error.toString());
      return ApiResult.error(apiError);
    }
  }
}