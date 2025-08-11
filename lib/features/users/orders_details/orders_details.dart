import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/widgets/app_text.dart';
import '../../../core/constants/colors.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/custom_drawer.dart';
import '../../../gen/assets.gen.dart';
import '../../../generated/locale_keys.g.dart';
import '../store_name/ui/store_name.dart';

class OrdersDetails extends StatelessWidget {
  const OrdersDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(color: AppColors.primaryMedium),
      ),
      controller: advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: true,
      openScale: 0.8,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      drawer: const CustomDrawer(),

      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(300.h),
          child: CustomAppBar(
            title: LocaleKeys.order_details.tr(),
            isHome: false,
            isOrders: true,

            widget: Container(
              width: 343.w,
              padding: EdgeInsetsDirectional.symmetric(
                horizontal: 16.w,
                vertical: 10.h,
              ),
              decoration: BoxDecoration(
                color: AppColors.primaryMedium,
                borderRadius: BorderRadius.circular(6.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 5.r,
                    spreadRadius: 1.r,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(1000.r),
                    child: Image.asset(
                      Assets.img.market.path,
                      height: 80.h,
                      width: 80.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 200.w,
                            child: AppText(text: 'اسم المنتج', size: 14.sp),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 100.w,
                            child: AppText(
                              text: 'الكمية : 12',
                              size: 14.sp,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 200.w,
                            child: AppText(
                              text: 'اسم المتجر',
                              size: 10.sp,
                              color: Colors.grey,
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 100.w,
                            child: AppText(text: '‏250.00 ر.س', size: 14.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
