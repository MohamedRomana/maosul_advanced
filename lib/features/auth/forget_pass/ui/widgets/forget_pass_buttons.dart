import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/widgets/app_button.dart';
import 'package:maosul_advanced/core/widgets/app_router.dart';
import 'package:maosul_advanced/core/widgets/app_text.dart';
import 'package:maosul_advanced/features/auth/reset_pass/ui/reset_pass.dart';
import '../../../../../generated/locale_keys.g.dart';

class ForgetPassButtons extends StatelessWidget {
  const ForgetPassButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      top: 30.h,
      onPressed: () {
        AppRouter.navigateTo(context, const ResetPass());
      },
      child: AppText(
        text: LocaleKeys.send.tr(),
        size: 16.sp,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
