import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/constants/colors.dart';
import '../../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../../core/widgets/custom_drawer.dart';
import '../../../../../../generated/locale_keys.g.dart';
import '../../../../store_name/ui/store_name.dart';
import 'widgets/canceled_orders.dart';
import 'widgets/current_orders.dart';
import 'widgets/finished_orders.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

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
          preferredSize: Size.fromHeight(77.h),
          child: CustomAppBar(
            title: LocaleKeys.orders.tr(),
            isHome: false,
            isOrders: true,
          ),
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Container(
                height: 40.h,
                decoration: BoxDecoration(
                  color: AppColors.primaryMedium,
                  borderRadius: BorderRadius.circular(5.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 5.r,
                      spreadRadius: 1.r,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: TabBar(
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
                  tabs: const [
                    Tab(child: Text('طلبات حالية')),
                    Tab(child: Text('طلبات منتهية')),
                    Tab(child: Text('طلبات ملغية')),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    CurrentOrders(),
                    FinishedOrders(),
                    CanceledOrders(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}