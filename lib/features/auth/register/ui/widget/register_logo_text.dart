import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/generated/locale_keys.g.dart';

import '../../../../../core/widgets/app_text.dart';
import '../../../../../gen/assets.gen.dart';

class RegisterLogoText extends StatelessWidget {
  const RegisterLogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Assets.img.logo.path,
          height: 88.h,
          width: 259.w,
          fit: BoxFit.fill,
        ),
        AppText(
          text: LocaleKeys.registerANewUser.tr(),
          size: 24.sp,
          color: Colors.black,
          fontWeight: FontWeight.w700,
          top: 65.h,
          bottom: 40.h,
        ),
      ],
    );
  }
}
