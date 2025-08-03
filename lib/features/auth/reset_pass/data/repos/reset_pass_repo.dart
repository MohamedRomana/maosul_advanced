import 'package:maosul_advanced/core/networking/api_result.dart';
import 'package:maosul_advanced/features/auth/reset_pass/apis/reset_pass_api_service.dart';
import 'package:maosul_advanced/features/auth/reset_pass/data/models/reset_pass_response_model.dart';
import '../../../../../core/networking/api_error_model.dart';
import '../models/reset_pass_request_body_model.dart';

class ResetPassRepo {
  final ResetPassApiService _resetPassApiService;

  ResetPassRepo(this._resetPassApiService);

  Future<ApiResult<ResetPassResponseModel>> resetPass(
    ResetPassRequestBodyModel resetPassRequestBodyModel,
  ) async {
    try {
      final response = await _resetPassApiService.resetPass(
        resetPassRequestBodyModel,
      );
      return ApiResult.success(response);
    } catch (error) {
      final apiError = ApiErrorModel(message: error.toString());
      return ApiResult.error(apiError);
    }
  }
}
