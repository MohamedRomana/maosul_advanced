import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maosul_advanced/core/networking/api_result.dart';
import 'package:maosul_advanced/features/auth/reset_pass/data/repos/reset_pass_repo.dart';
import '../../../../core/networking/api_error_model.dart';
import '../data/models/reset_pass_request_body_model.dart';
import 'reset_pass_state.dart';

class ResetPassCubit extends Cubit<ResetPassState> {
  final ResetPassRepo _resetPassRepo;
  final String userId;
  ResetPassCubit(this._resetPassRepo, {required this.userId})
    : super(const ResetPassState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();

  String code = "";

  Future<void> resetPass() async {
    emit(const ResetPassState.resetPassLoading());
    final result = await _resetPassRepo.resetPass(
      ResetPassRequestBodyModel(
        userId: userId,
        code: code,
        password: passwordController.text,
      ),
    );
    result.when(
      success: (response) {
        if (response.key == 1) {
          emit(ResetPassState.resetPassSuccess(response));
        } else {
          emit(
            ResetPassState.resetPassError(
              ApiErrorModel(message: response.msg, key: response.key),
            ),
          );
        }
      },
      error: (error) => emit(ResetPassState.resetPassError(error)),
    );
  }
}
