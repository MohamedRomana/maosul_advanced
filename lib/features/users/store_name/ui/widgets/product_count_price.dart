import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/widgets/app_text.dart';

class ProductCountPrice extends StatelessWidget {
  const ProductCountPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 15.r,
              backgroundColor: AppColors.primary,
              child: const Icon(Icons.add, color: Colors.white),
            ),
            Container(
              width: 47.w,
              margin: EdgeInsets.symmetric(horizontal: 6.w),
              padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: AppText(text: '2', size: 14.sp, color: Colors.black),
            ),
            CircleAvatar(
              radius: 15.r,
              backgroundColor: const Color(0xffBFDBCE),
              child: const Icon(Icons.remove, color: Colors.white),
            ),
          ],
        ),
        const Spacer(),
        SizedBox(
          width: 150.w,
          child: AppText(textAlign: TextAlign.end, text: '‏75ر.س', size: 14.sp),
        ),
      ],
    );
  }
}
