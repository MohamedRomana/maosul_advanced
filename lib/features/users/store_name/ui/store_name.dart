import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_bottom_nav.dart';
import '../../../../generated/locale_keys.g.dart';
import 'widgets/store_product_list.dart';

class StoreName extends StatelessWidget {
  const StoreName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNav(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(230.h),
        child: CustomAppBar(
          title: LocaleKeys.storename.tr(),
          isStore: true,
          isHome: false,
        ),
      ),
      body: DefaultTabController(
        length: 10,
        child: Column(
          children: [
            Container(
              height: 30.h,
              margin: EdgeInsetsDirectional.only(start: 16.w),
              decoration: BoxDecoration(
                color: AppColors.primaryMedium,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: TabBar(
                isScrollable: true,
                padding: EdgeInsetsDirectional.only(start: -52.w),
                indicatorColor: Colors.transparent,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorAnimation: TabIndicatorAnimation.linear,
                dividerColor: Colors.transparent,
                labelStyle: TextStyle(fontSize: 12.sp),
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                indicator: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(5.r),
                ),
                tabs: List.generate(
                  10,
                  (index) => const Tab(text: "اسم القسم"),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: List.generate(10, (index) {
                  return const StoreProductsList();
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
