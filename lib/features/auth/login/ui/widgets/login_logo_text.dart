import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/cache/cache_helper.dart';
import '../../../../../core/widgets/app_text.dart';
import '../../../../../gen/assets.gen.dart';

class LoginLogoText extends StatelessWidget {
  const LoginLogoText({super.key});

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
          text: CacheHelper.getUserType() == "client"
              ? 'تسجيل زبون'
              : 'تسجيل موظف',
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
