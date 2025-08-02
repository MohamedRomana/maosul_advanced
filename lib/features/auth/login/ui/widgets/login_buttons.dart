import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/widgets/app_router.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_text.dart';
import '../../../../../generated/locale_keys.g.dart';
import '../../../forget_pass/ui/forget_pass.dart';
import '../../../register/ui/register.dart';

class LoginButtons extends StatelessWidget {
  const LoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButton(
          top: 30.h,
          onPressed: () {},
          child: AppText(
            text: LocaleKeys.login.tr(),
            size: 16.sp,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 27.h),
        TextButton(
          onPressed: () {
            AppRouter.navigateTo(context, const ForgetPass());
          },
          child: AppText(
            text: LocaleKeys.forgotPassword.tr(),
            size: 16.sp,
            color: Colors.red,
          ),
        ),
        SizedBox(height: 24.h),
        TextButton(
          onPressed: () {
            AppRouter.navigateTo(context, const Register());
          },
          child: AppText(
            text: LocaleKeys.newUser.tr(),
            size: 16.sp,
            color: AppColors.secondray,
          ),
        ),
      ],
    );
  }
}
