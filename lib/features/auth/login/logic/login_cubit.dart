import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maosul_advanced/core/cache/cache_helper.dart';
import 'package:maosul_advanced/core/networking/api_result.dart';
import 'package:maosul_advanced/features/auth/login/data/models/login_requets_body_model.dart';
import 'package:maosul_advanced/features/auth/login/data/repos/login_repo.dart';

import '../../../../core/networking/api_error_model.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String phoneCode = '966';
  void login() async {
    emit(const LoginState.loginLoading());
    final response = await _loginRepo.login(
      LoginRequetsBodyModel(
        lang: CacheHelper.getLang(),
        userType: CacheHelper.getUserType(),
        phoneCode: phoneCode,
        phone: phoneController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) async {
        if (loginResponse.key == 1) {
          emit(LoginState.loginSuccess(loginResponse));
        } else {
          emit(
            LoginState.loginFailure(
              ApiErrorModel(message: loginResponse.msg, key: loginResponse.key),
            ),
          );
        }
      },
      error: (error) {
        emit(LoginState.loginFailure(error));
      },
    );
  }
}
