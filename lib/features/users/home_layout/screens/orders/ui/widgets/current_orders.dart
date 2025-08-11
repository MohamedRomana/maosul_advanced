import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/helper/extentions.dart';
import '../../../../../../../core/constants/colors.dart';
import '../../../../../../../core/routing/routes.dart';
import '../../../../../../../core/widgets/app_text.dart';
import '../../../../../../../gen/assets.gen.dart';

class CurrentOrders extends StatelessWidget {
  const CurrentOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsetsDirectional.only(
        start: 16.w,
        end: 16.w,
        bottom: 100.h,
        top: 24.h,
      ),
      physics: const BouncingScrollPhysics(),
      itemCount: 30,
      separatorBuilder: (context, index) => SizedBox(height: 16.h),
      itemBuilder: (context, index) => InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          context.pushNamed(Routes.orderDetails);
        },
        child: Container(
          width: 343.w,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: AppColors.primaryMedium,
            borderRadius: BorderRadius.circular(6.r),
            boxShadow: [
              BoxShadow(
                color: AppColors.primary.withAlpha(50),
                blurRadius: 5.r,
                spreadRadius: 1.r,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(14.r),
                child: Image.asset(
                  Assets.img.market.path,
                  height: 80.w,
                  width: 80.w,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(text: 'رقم الطلب: 25423', size: 14.sp, bottom: 7.h),
                  AppText(
                    text: 'حالة الطلب: جاري العمل عليه',
                    size: 14.sp,
                    color: Colors.black,
                    bottom: 7.h,
                  ),
                  AppText(text: 'اسم المتجر', size: 10.sp, color: Colors.grey),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
