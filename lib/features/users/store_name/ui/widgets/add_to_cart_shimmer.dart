import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/widgets/custom_shimmer.dart';

class AddToCartShimmer extends StatelessWidget {
  const AddToCartShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomShimmer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80.h,
                width: 80.w,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 15.h,
                        width: 100.w,
                        color: Colors.white,
                        margin: EdgeInsetsDirectional.only(end: 50.w),
                      ),

                      Row(
                        children: [
                          const Icon(Icons.favorite, color: Colors.red),
                          SizedBox(width: 10.w),

                          Container(
                            height: 22.h,
                            width: 50.w,
                            padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 2.w,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  Container(height: 15.h, width: 180.w, color: Colors.white),
                  SizedBox(height: 5.h),
                  Container(height: 15.h, width: 180.w, color: Colors.white),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: const Divider(color: AppColors.primary),
          ),
          Row(
            children: [
              Container(
                height: 40.h,
                width: 40.w,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 22.h,
                width: 50.w,
                padding: EdgeInsetsDirectional.symmetric(horizontal: 2.w),
                margin: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: AppColors.primary,
                ),
              ),
              Container(
                height: 40.h,
                width: 40.w,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 80.w),
              Container(height: 15.h, width: 100.w, color: Colors.white),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: const Divider(color: AppColors.primary),
          ),
          Container(height: 15.h, width: 100.w, color: Colors.white),
          SizedBox(height: 15.h),
          Container(
            height: 100.h,
            width: 343.w,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.primary),
              borderRadius: BorderRadius.circular(15.r),
            ),
          ),
          SizedBox(height: 24.h),
          Center(
            child: Container(
              height: 50.h,
              width: 311.w,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(100.r),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
