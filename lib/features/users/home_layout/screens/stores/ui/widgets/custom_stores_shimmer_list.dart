import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/widgets/custom_shimmer.dart';

class CustomStoresShimmerList extends StatelessWidget {
  const CustomStoresShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomShimmer(
      child: ListView.separated(
        itemCount: 5,
        padding: EdgeInsetsDirectional.only(
          start: 16.w,
          end: 16.w,
          bottom: 140.h,
        ),
        separatorBuilder: (context, index) => SizedBox(height: 16.h),
        itemBuilder: (context, index) => Container(
          height: 150.h,
          width: 343.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
    );
  }
}
