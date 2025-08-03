import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/widgets/app_input.dart';
import '../../../../../generated/locale_keys.g.dart';
import '../../logic/reset_pass_cubit.dart';

class ResetPassFields extends StatefulWidget {
  final TextEditingController confirmPasswordController;
  const ResetPassFields({
    super.key,
    required this.confirmPasswordController,
  });

  @override
  State<ResetPassFields> createState() => _ResetPassFieldsState();
}

class _ResetPassFieldsState extends State<ResetPassFields> {
  bool isPassSequre = true;
  bool isConfirmPassSequre = true;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ResetPassCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          AppInput(
            top: 16.h,
            filled: true,
            secureText: isPassSequre,
            color: Colors.white,
            prefixIcon: Icon(Icons.lock, color: AppColors.primary, size: 24.sp),
            suffixIcon: IconButton(
              icon: Icon(
                isPassSequre ? Icons.visibility_off : Icons.visibility,
                color: AppColors.primary,
                size: 24.sp,
              ),
              onPressed: () {
                setState(() {
                  isPassSequre = !isPassSequre;
                });
              },
            ),
            hint: LocaleKeys.password.tr(),
            controller: cubit.passwordController,
            validate: (value) {
              if (value!.isEmpty) {
                return LocaleKeys.password_required.tr();
              }
              return null;
            },
          ),
          AppInput(
            top: 16.h,
            filled: true,
            secureText: isConfirmPassSequre,
            color: Colors.white,
            prefixIcon: Icon(Icons.lock, color: AppColors.primary, size: 24.sp),
            suffixIcon: IconButton(
              icon: Icon(
                isConfirmPassSequre ? Icons.visibility_off : Icons.visibility,
                color: AppColors.primary,
                size: 24.sp,
              ),
              onPressed: () {
                setState(() {
                  isConfirmPassSequre = !isConfirmPassSequre;
                });
              },
            ),
            hint: LocaleKeys.confirmPassword.tr(),
            controller: widget.confirmPasswordController,
            validate: (value) {
              if (cubit.passwordController.text != value) {
                return LocaleKeys.password_mismatch.tr();
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
