import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/constants/colors.dart';
import 'package:maosul_advanced/core/widgets/app_cached.dart';
import 'package:maosul_advanced/core/widgets/app_text.dart';
import 'package:maosul_advanced/core/widgets/custom_app_bar.dart';
import 'package:maosul_advanced/core/widgets/custom_bottom_nav.dart';

class Sections extends StatelessWidget {
  const Sections({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNav(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.h),
        child: const CustomAppBar(title: 'الاقسام'),
      ),
      body: GridView.builder(
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
          padding: EdgeInsets.all(16.r),
          width: 110.w,
          decoration: BoxDecoration(
            color: AppColors.primaryMedium,
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: Column(
            children: [
              AppCachedImage(
                image: 'image',
                height: 42.w,
                width: 42.w,
                fit: BoxFit.cover,
              ),
              AppText(
                text: 'text',
                size: 12.sp,
                fontWeight: FontWeight.w600,
                top: 5.h,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
