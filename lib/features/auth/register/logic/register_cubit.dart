import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maosul_advanced/core/cache/cache_helper.dart';
import 'package:maosul_advanced/core/networking/api_result.dart';
import 'package:maosul_advanced/features/auth/register/data/models/register_request_body_model.dart';
import '../../../../core/networking/api_error_model.dart';
import '../data/repos/register_repo.dart';
import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;
  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String registerCode = '966';
  double lat = 0.0;
  double lng = 0.0;

  void register() async {
    emit(const RegisterState.registerLoading());
    final response = await _registerRepo.register(
      RegisterRequestBodyModel(
        lang: CacheHelper.getLang(),
        userType: CacheHelper.getUserType(),
        firstName: nameController.text,
        email: emailController.text,
        phoneCode: registerCode,
        phone: phoneController.text,
        password: passwordController.text,
        address: locationController.text,
        lat: lat.toString(),
        lng: lng.toString(),
      ),
    );
    response.when(
      success: (registerResponse) {
        if (registerResponse.key == 1) {
          emit(RegisterState.registerSuccess(registerResponse));
          CacheHelper.setUserId(registerResponse.data?.id.toString());
        } else {
          emit(
            RegisterState.registerError(
              ApiErrorModel(
                message: registerResponse.msg,
                key: registerResponse.key,
              ),
            ),
          );
        }
      },
      error: (error) {
        emit(RegisterState.registerError(error));
      },
    );
  }
}
