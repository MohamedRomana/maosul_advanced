import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/widgets/custom_shimmer.dart';

class HomeShimmer extends StatelessWidget {
  const HomeShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomShimmer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150.h,
            width: 343.w,
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          SizedBox(height: 30.h),
          Row(
            children: [
              Container(
                height: 15.h,
                width: 100.w,
                color: Colors.white,
                margin: EdgeInsetsDirectional.only(start: 16.w),
              ),
              const Spacer(),
              Container(
                height: 15.h,
                width: 80.w,
                color: Colors.white,
                margin: EdgeInsetsDirectional.only(end: 16.w),
              ),
            ],
          ),
          SizedBox(height: 11.h),
          SizedBox(
            height: 40.h,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(width: 6.w),
              itemBuilder: (context, index) => Container(
                height: 40.h,
                width: 105.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.r),
                ),
              ),
            ),
          ),
          SizedBox(height: 25.h),
          Container(
            height: 15.h,
            width: 100.w,
            color: Colors.white,
            margin: EdgeInsetsDirectional.only(start: 16.w, bottom: 12.h),
          ),
          SizedBox(
            height: 150.h,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(width: 6.w),
              itemBuilder: (context, index) => Container(
                height: 150.h,
                width: 140.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ),
          ),
          SizedBox(height: 25.h),
          Container(
            height: 15.h,
            width: 100.w,
            color: Colors.white,
            margin: EdgeInsetsDirectional.only(start: 16.w, bottom: 12.h),
          ),
          SizedBox(
            height: 150.h,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(width: 6.w),
              itemBuilder: (context, index) => Container(
                height: 150.h,
                width: 200.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
