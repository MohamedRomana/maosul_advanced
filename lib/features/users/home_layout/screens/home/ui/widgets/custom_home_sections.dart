import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/constants/colors.dart';
import '../../../../../../../core/widgets/app_text.dart';
import '../../../../../../../gen/assets.gen.dart';

class CustomHomeSections extends StatelessWidget {
  const CustomHomeSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AppText(
              start: 16.w,
              text: 'الاقسام',
              size: 18.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            const Spacer(),
            AppText(end: 16.w, text: 'عرض الكل', size: 12.sp),
          ],
        ),

        SizedBox(height: 15.h),
        SizedBox(
          height: 40.h,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            itemCount: 20,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(width: 6.w),
            itemBuilder: (context, index) => Container(
              width: 105.w,
              padding: EdgeInsets.all(8.r),
              decoration: BoxDecoration(
                color: AppColors.primaryMedium,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Row(
                children: [
                  Image.asset(
                    Assets.img.flour.path,
                    height: 20.w,
                    width: 20.w,
                    fit: BoxFit.fill,
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 60.w,
                    child: AppText(
                      text: 'مواد غذائية ',
                      color: Colors.black,
                      size: 12.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 25.h),
      ],
    );
  }
}
