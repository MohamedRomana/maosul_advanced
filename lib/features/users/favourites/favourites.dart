import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/widgets/app_text.dart';
import 'package:maosul_advanced/core/widgets/custom_app_bar.dart';
import 'package:maosul_advanced/gen/assets.gen.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widgets/custom_bottom_nav.dart';
import '../../../core/widgets/custom_drawer.dart';
import '../../../generated/locale_keys.g.dart';
import '../store_name/ui/store_name.dart';

class Favourites extends StatelessWidget {
  const Favourites({super.key});

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
        bottomNavigationBar: const CustomBottomNav(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h),
          child: CustomAppBar(title: LocaleKeys.favourite.tr()),
        ),
        body: GridView.builder(
          padding: EdgeInsetsDirectional.only(
            bottom: 40.h,
            start: 16.w,
            end: 16.w,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.65,
          ),
          itemCount: 20,
          itemBuilder: (context, index) => Stack(
            children: [
              Container(
                width: 165.w,
                decoration: BoxDecoration(
                  color: AppColors.primaryMedium,
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.r),
                        topRight: Radius.circular(5.r),
                      ),
                      child: Image.asset(
                        Assets.img.market.path,
                        height: 150.h,
                        width: 165.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 13.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          start: 15.w,
                          bottom: 10.h,
                          text: 'اسم المنتج',
                          color: Colors.black,
                          size: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        Row(
                          children: [
                            AppText(
                              start: 9.w,
                              text: '‏75ر.س',
                              color: Colors.grey,
                              size: 12.sp,
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor: AppColors.primary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                minimumSize: Size(66.w, 30.h),
                                maximumSize: Size(66.w, 30.h),
                              ),
                              child: Row(
                                children: [
                                  const Icon(Icons.star, color: Colors.amber),

                                  AppText(
                                    text: '3.5',
                                    size: 12.sp,
                                    color: Colors.white,
                                    start: 5.w,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10.w),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.cancel_outlined,
                  color: AppColors.primary,
                  size: 30.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
