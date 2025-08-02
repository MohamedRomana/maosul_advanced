import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/app_text.dart';
import '../../../../../gen/assets.gen.dart';

class IntroImageText extends StatelessWidget {
  const IntroImageText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Assets.img.onBoarding1.path,
          height: 286.h,
          width: 342.w,
          fit: BoxFit.fill,
        ),
        AppText(
          text: 'عنوان تجريبي',
          size: 24.sp,
          fontWeight: FontWeight.w700,
          top: 4.h,
          bottom: 17.h,
        ),
        AppText(
          text:
              'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص',
          color: Colors.black,
          lines: 3,
          textAlign: TextAlign.center,
          bottom: 24.h,
        ),
      ],
    );
  }
}
