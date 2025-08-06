import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/custom_shimmer.dart';

class CustomProductsShimmer extends StatelessWidget {
  const CustomProductsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomShimmer(
      child: Column(
        children: [
          Container(
            height: 30.h,
            width: double.infinity,
            margin: EdgeInsetsDirectional.only(start: 16.w),
            color: Colors.white,
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            padding: EdgeInsetsDirectional.only(
              start: 16.w,
              end: 16.w,
              top: 24.h,
              bottom: 40.h,
            ),
            separatorBuilder: (context, index) => SizedBox(height: 16.h),
            itemBuilder: (context, index) => Container(
              height: 82.h,
              width: 343.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.r),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
