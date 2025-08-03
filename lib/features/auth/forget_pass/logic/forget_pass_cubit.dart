import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maosul_advanced/core/networking/api_result.dart';
import 'package:maosul_advanced/features/auth/forget_pass/data/repos/forget_pass_repo.dart';
import '../../../../core/cache/cache_helper.dart';
import '../../../../core/networking/api_error_model.dart';
import '../data/models/forget_pass_request_body_model.dart';
import 'forget_pass_state.dart';

class ForgetPassCubit extends Cubit<ForgetPassState> {
  final ForgetPassRepo _forgetPassRepo;
  ForgetPassCubit(this._forgetPassRepo)
    : super(const ForgetPassState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  String forgetCode = '966';
  String resetPassUserId = '';

  void forgetPass() async {
    emit(const ForgetPassState.forgetPassLoading());
    final response = await _forgetPassRepo.forgetPass(
      ForgetPassRequestBodyModel(
        lang: CacheHelper.getLang(),
        phoneCode: forgetCode,
        phone: phoneController.text,
      ),
    );
    response.when(
      success: (forgetPassResponse) {
        if (forgetPassResponse.key == 1) {
          emit(ForgetPassState.forgetPassSuccess(forgetPassResponse));
          resetPassUserId = forgetPassResponse.data!.id.toString();
        } else {
          emit(
            ForgetPassState.forgetPassError(
              ApiErrorModel(
                message: forgetPassResponse.msg,
                key: forgetPassResponse.key,
              ),
            ),
          );
        }
      },
      error: (error) {
        emit(ForgetPassState.forgetPassError(error));
      },
    );
  }
}
