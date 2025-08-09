import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/constants/colors.dart';
import '../../../../../../../core/routing/routes.dart';
import '../../../../../../../core/widgets/app_text.dart';

class CustomTopProfile extends StatelessWidget {
  const CustomTopProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, Routes.editProfile),
      child: Container(
        width: 343.w,
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 29.h),
        decoration: BoxDecoration(
          color: AppColors.primaryMedium,
          borderRadius: BorderRadius.circular(5.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.r,
              spreadRadius: 1.r,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppText(
                  text: 'اسم المستخدم',
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
                AppText(
                  text: 'حي الصحافة - ش الملك سعود',
                  top: 10.h,
                  size: 10.sp,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
            const Spacer(),
            CircleAvatar(
              radius: 25.r,
              backgroundColor: const Color(0xffB5C4B5),
              child: Icon(Icons.edit, color: Colors.white, size: 20.sp),
            ),
          ],
        ),
      ),
    );
  }
}
