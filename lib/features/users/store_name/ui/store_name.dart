import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_bottom_nav.dart';
import '../../../../core/widgets/custom_drawer.dart';
import '../../../../generated/locale_keys.g.dart';
import '../logic/cubit/store_name_cubit.dart';
import '../logic/cubit/store_name_state.dart';
import 'widgets/custom_empty_sub_sections.dart';
import 'widgets/custom_product_shimmer.dart';
import 'widgets/store_name_detail_bar.dart';
import 'widgets/store_product_list.dart';

final advancedDrawerController = AdvancedDrawerController();

class StoreName extends StatelessWidget {
  final String providerId;
  const StoreName({super.key, required this.providerId});

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
          preferredSize: Size.fromHeight(230.h),
          child: CustomAppBar(
            title: LocaleKeys.storename.tr(),
            isStore: true,
            isHome: false,
            widget: const StoreNameDetailsBar(),
          ),
        ),
        body: BlocBuilder<StoreNameCubit, StoreNameState>(
          builder: (context, state) {
            final cubit = context.read<StoreNameCubit>();
            return const StoreNameState.storeNameLoading() == state
                ? const CustomProductsShimmer()
                : cubit.subSections.isEmpty
                ? const CustomEmptySubSections()
                : DefaultTabController(
                    length: cubit.subSections.length,
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
                            overlayColor: WidgetStateProperty.all(
                              Colors.transparent,
                            ),
                            indicator: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            tabs: List.generate(
                              cubit.subSections.length,
                              (index) =>
                                  Tab(text: cubit.subSections[index].title),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            children: List.generate(cubit.subSections.length, (
                              index,
                            ) {
                              return const StoreProductsList();
                            }),
                          ),
                        ),
                      ],
                    ),
                  );
          },
        ),
      ),
    );
  }
}
