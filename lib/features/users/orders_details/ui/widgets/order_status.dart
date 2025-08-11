import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/widgets/app_text.dart';
import '../../../../../gen/assets.gen.dart';

class OrderStatus extends StatelessWidget {
  const OrderStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: 16.w,
        vertical: 20.h,
      ),
      margin: EdgeInsetsDirectional.symmetric(vertical: 16.h, horizontal: 16.w),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: 'حالة الطلب',
            size: 18.sp,
            fontWeight: FontWeight.w600,
            bottom: 11.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100.w,
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 12.w,
                  vertical: 16.h,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.r),
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
                    SvgPicture.asset(
                      Assets.svg.restart,
                      height: 25.w,
                      width: 25.w,
                      fit: BoxFit.fill,
                    ),
                    AppText(text: 'تم ارسال الطلب', top: 9.h, size: 12.sp),
                  ],
                ),
              ),
              Container(
                width: 100.w,
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 12.w,
                  vertical: 16.h,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.r),
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
                    Icon(
                      Icons.timer_outlined,
                      size: 25.sp,
                      color: AppColors.primary,
                    ),
                    AppText(text: 'جاري التوصيل', top: 9.h, size: 12.sp),
                  ],
                ),
              ),
              Container(
                width: 100.w,
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 12.w,
                  vertical: 16.h,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.r),
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
                    Icon(Icons.done, size: 25.sp, color: AppColors.primary),
                    AppText(text: 'تم التوصيل', top: 9.h, size: 12.sp),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


