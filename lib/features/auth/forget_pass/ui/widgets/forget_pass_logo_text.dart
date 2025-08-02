import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/app_text.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../../generated/locale_keys.g.dart';

class ForgetPassLogoText extends StatelessWidget {
  const ForgetPassLogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
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