import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/constants/colors.dart';
import '../../../../../../../core/widgets/custom_shimmer.dart';

class CartListShimmer extends StatelessWidget {
  const CartListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomShimmer(
      child: ListView.separated(
        padding: EdgeInsets.only(bottom: 20.h),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        shrinkWrap: true,
        separatorBuilder: (context, index) => SizedBox(height: 18.h),
        itemBuilder: (context, index) => Container(
          height: 80.h,
          width: 343.w,
          decoration: BoxDecoration(
            color: AppColors.primaryMedium,
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
    );
  }
}
