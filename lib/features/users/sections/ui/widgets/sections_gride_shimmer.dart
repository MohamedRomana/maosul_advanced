import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/widgets/custom_shimmer.dart';

class SectionsGrideShimmer extends StatelessWidget {
  const SectionsGrideShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomShimmer(
      child: GridView.builder(
        padding: EdgeInsetsDirectional.only(
          start: 16.w,
          end: 16.w,
          bottom: 40.h,
        ),
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 10.h,
          childAspectRatio: 1.1,
        ),
        itemBuilder: (context, index) => Container(
          height: 80.h,
          width: 110.w,
          decoration: BoxDecoration(
            color: AppColors.primaryMedium,
            borderRadius: BorderRadius.circular(5.r),
          ),
        ),
      ),
    );
  }
}
