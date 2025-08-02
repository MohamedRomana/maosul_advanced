import 'package:maosul_advanced/core/networking/api_result.dart';
import 'package:maosul_advanced/features/auth/login/data/apis/login_api_service.dart';
import 'package:maosul_advanced/features/auth/login/data/models/login_requets_body_model.dart';
import 'package:maosul_advanced/features/auth/login/data/models/login_response_model.dart';
import '../../../../../core/networking/api_error_model.dart';

class LoginRepo {
  final LoginApiService _apiLoginService;

  LoginRepo(this._apiLoginService);

  Future<ApiResult<LoginResponseModel>> login(
    LoginRequetsBodyModel loginRequetsBodyModel,
  ) async {
    try {
      final response = await _apiLoginService.login(loginRequetsBodyModel);
      return ApiResult.success(response);
    } catch (error) {
      final apiError = ApiErrorModel(message: error.toString());
      return ApiResult.error(apiError);
    }
  }
}
