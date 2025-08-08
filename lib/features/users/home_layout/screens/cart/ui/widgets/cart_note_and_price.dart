import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/colors.dart';
import '../../../../../../../core/widgets/app_input.dart';
import '../../../../../../../core/widgets/app_text.dart';

class CartNoteAndPrice extends StatelessWidget {
  const CartNoteAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(text: 'ملاحظات', size: 16.sp, fontWeight: FontWeight.w600),
        AppInput(
          filled: true,
          maxLines: 4,
          start: 0,
          end: 0,
          border: 10.r,
          top: 10.h,
          hint: 'سجل ملاحظاتك',
          // controller: cubit.noteController,
          bottom: 24.h,
        ),
        AppText(
          top: 16.h,
          bottom: 10.h,
          text: 'الاجمالي',
          size: 16.sp,
          fontWeight: FontWeight.w600,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          width: 343.w,
          decoration: BoxDecoration(
            color: AppColors.primaryMedium,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  AppText(
                    text: 'المجموع',
                    size: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                  const Spacer(),
                  AppText(
                    text: '135 ر.س',
                    size: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              SizedBox(height: 14.h),
              Divider(color: Colors.grey, thickness: 1.h),
              SizedBox(height: 14.h),
              Row(
                children: [
                  AppText(
                    text: 'القيمة المضافة',
                    size: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                  const Spacer(),
                  AppText(
                    text: '135 ر.س',
                    size: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              SizedBox(height: 14.h),
              Divider(color: Colors.grey, thickness: 1.h),
              SizedBox(height: 14.h),
              Row(
                children: [
                  AppText(
                    text: 'الاجمالي',
                    size: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                  const Spacer(),
                  AppText(
                    text: '135 ر.س',
                    size: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
