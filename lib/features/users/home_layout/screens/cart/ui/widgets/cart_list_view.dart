import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/colors.dart';
import '../../../../../../../core/widgets/app_cached.dart';
import '../../../../../../../core/widgets/app_text.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(bottom: 20.h),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      shrinkWrap: true,
      separatorBuilder: (context, index) => SizedBox(height: 18.h),
      itemBuilder: (context, index) => Stack(
        children: [
          Container(
            width: 343.w,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: AppColors.primaryMedium,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(1000.r),
                  child: AppCachedImage(
                    image: 'image',
                    height: 60.w,
                    width: 60.w,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10.w),
                Column(
                  children: [
                    AppText(
                      text: 'اسم المنتج',
                      size: 12.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      bottom: 11.h,
                    ),
                    AppText(text: '‏75ر.س', size: 12.sp, color: Colors.grey),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 15.r,
                        backgroundColor: AppColors.primary,
                        child: const Icon(Icons.add, color: Colors.white),
                      ),
                    ),
                    Container(
                      width: 47.w,
                      margin: EdgeInsets.symmetric(horizontal: 6.w),
                      padding: EdgeInsets.symmetric(
                        horizontal: 19.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: AppText(
                        text: '10',
                        size: 14.sp,
                        color: Colors.black,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 15.r,
                        backgroundColor: const Color(0xffBFDBCE),
                        child: const Icon(Icons.remove, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          PositionedDirectional(
            top: 5.h,
            end: 10.w,
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.close, color: Colors.red, size: 16.sp),
            ),
          ),
        ],
      ),
    );
  }
}
