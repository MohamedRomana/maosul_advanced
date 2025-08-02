import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_router.dart';
import '../../../../../core/widgets/app_text.dart';
import '../../../../../generated/locale_keys.g.dart';
import '../../../otp/ui/otp.dart';

class RegisterButtons extends StatelessWidget {
  const RegisterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButton(
          top: 30.h,
          onPressed: () {
            AppRouter.navigateTo(context, const Otp());
          },
          child: AppText(
            text: LocaleKeys.register.tr(),
            size: 16.sp,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),

        TextButton(
          onPressed: () {},
          child: AppText(
            text: LocaleKeys.iAlreadyHaveAnAccount.tr(),
            size: 16.sp,
            color: AppColors.secondray,
          ),
        ),
      ],
    );
  }
}
