import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/widgets/app_input.dart';
import '../../../../../generated/locale_keys.g.dart';

class ResetPassFields extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  const ResetPassFields({
    super.key,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.formKey,
  });

  @override
  State<ResetPassFields> createState() => _ResetPassFieldsState();
}

class _ResetPassFieldsState extends State<ResetPassFields> {
  bool isPassSequre = true;
  bool isConfirmPassSequre = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
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
            controller: widget.passwordController,
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
              if (value!.isEmpty) {
                return LocaleKeys.confirmPassword.tr();
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
