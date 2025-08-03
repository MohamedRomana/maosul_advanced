import 'package:maosul_advanced/core/networking/api_result.dart';
import 'package:maosul_advanced/features/auth/forget_pass/data/models/forget_pass_response_model.dart';
import '../../../../../core/networking/api_error_model.dart';
import '../../apis/forget_pass_api_service.dart';
import '../models/forget_pass_request_body_model.dart';

class ForgetPassRepo {
  final ForgetPassApiService _forgetPassApiService;

  ForgetPassRepo(this._forgetPassApiService);

  Future<ApiResult<ForgetPassResponseModel>> forgetPass(
    ForgetPassRequestBodyModel forgetPassRequestBodyModel,
  ) async {
    try {
      final response = await _forgetPassApiService.forgetPass(
        forgetPassRequestBodyModel,
      );
      return ApiResult.success(response);
    } catch (error) {
      final apiError = ApiErrorModel(message: error.toString());
      return ApiResult.error(apiError);
    }
  }
}
