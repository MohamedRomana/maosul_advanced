import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/widgets/app_text.dart';

class AboutOrder extends StatelessWidget {
  const AboutOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: 16.w,
        vertical: 20.h,
      ),
      margin: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: AppColors.primaryMedium,
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 5.r,
            spreadRadius: 1.r,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.person, size: 30.sp, color: AppColors.primary),

              AppText(
                text: 'اسم المتجر',
                fontWeight: FontWeight.w600,
                start: 11.w,
                color: Colors.black,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 18.h),
            child: Divider(thickness: 1.sp, color: Colors.grey.shade400),
          ),
          Row(
            children: [
              Icon(Icons.location_on, size: 30.sp, color: AppColors.primary),

              AppText(
                text: 'الرياض  - المملكة العربية السعودية',
                fontWeight: FontWeight.w600,
                start: 11.w,
                color: Colors.black,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 18.h),
            child: Divider(thickness: 1.sp, color: Colors.grey.shade400),
          ),
          Row(
            children: [
              Icon(Icons.location_on, size: 30.sp, color: AppColors.primary),

              AppText(
                text: 'يبعد عنك 12 كم',
                fontWeight: FontWeight.w600,
                start: 11.w,
                color: Colors.black,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 18.h),
            child: Divider(thickness: 1.sp, color: Colors.grey.shade400),
          ),
          Row(
            children: [
              Icon(Icons.euro, size: 30.sp, color: AppColors.primary),

              AppText(
                text: 'تكلفة التوصيل  : 20 ريال',
                fontWeight: FontWeight.w600,
                start: 11.w,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

