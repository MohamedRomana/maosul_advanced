import 'package:maosul_advanced/core/networking/api_result.dart';
import 'package:maosul_advanced/features/auth/register/data/models/register_request_body_model.dart';
import 'package:maosul_advanced/features/auth/register/data/models/register_response_model.dart';
import '../../../../../core/networking/api_error_model.dart';
import '../../apis/register_api_service.dart';

class RegisterRepo {
  final RegisterApiService _registerApiService;

  RegisterRepo(this._registerApiService);

  Future<ApiResult<RegisterResponseModel>> register(
    RegisterRequestBodyModel registerRequestBodyModel,
  ) async {
    try {
      final response = await _registerApiService.register(
        registerRequestBodyModel,
      );
      return ApiResult.success(response);
    } catch (error) {
      final apiError = ApiErrorModel(message: error.toString());
      return ApiResult.error(apiError);
    }
  }
}
