import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/constants/colors.dart';
import '../../../../../../../core/widgets/app_text.dart';

class AboutProfileContainer extends StatelessWidget {
  const AboutProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      width: 343.w,
      decoration: BoxDecoration(
        color: AppColors.primaryMedium,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.r),
            width: 311.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: Row(
              children: [
                Icon(Icons.person, size: 30.sp, color: AppColors.primary),
                AppText(
                  start: 10.w,
                  text: 'اسلام أسامة هندام',
                  size: 14.sp,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            padding: EdgeInsets.all(10.r),
            width: 311.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: Row(
              children: [
                Icon(Icons.email, size: 30.sp, color: AppColors.primary),
                AppText(
                  start: 10.w,
                  text: 'benimaskim1994@gmail.com',
                  size: 14.sp,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            padding: EdgeInsets.all(10.r),
            width: 311.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: Row(
              children: [
                Icon(Icons.phone, size: 30.sp, color: AppColors.primary),
                AppText(
                  start: 10.w,
                  text: '+9662584258258',
                  size: 14.sp,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}