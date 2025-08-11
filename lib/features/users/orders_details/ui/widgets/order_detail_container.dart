import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/widgets/app_text.dart';
import '../../../../../gen/assets.gen.dart';

class CustomOrderDetailContainer extends StatelessWidget {
  const CustomOrderDetailContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: 16.w,
        vertical: 10.h,
      ),
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
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(1000.r),
            child: Image.asset(
              Assets.img.market.path,
              height: 80.h,
              width: 80.w,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(width: 10.w),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 120.w,
                    child: AppText(
                      textAlign: TextAlign.start,
                      text: 'اسم المنتج',
                      size: 14.sp,
                    ),
                  ),
                  SizedBox(
                    width: 100.w,
                    child: AppText(
                      textAlign: TextAlign.end,
                      text: 'الكمية : 12',
                      size: 14.sp,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 120.w,
                    child: AppText(
                      textAlign: TextAlign.start,
                      text: 'اسم المتجر',
                      size: 10.sp,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 100.w,
                    child: AppText(
                      textAlign: TextAlign.end,
                      text: '‏250.00 ر.س',
                      size: 14.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
