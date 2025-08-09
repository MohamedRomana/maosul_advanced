import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/constants/colors.dart';
import '../../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../../core/widgets/custom_drawer.dart';
import '../../../../../../generated/locale_keys.g.dart';
import '../../../../store_name/ui/store_name.dart';
import '../logic/cubit/home_cubit.dart';
import '../logic/cubit/home_state.dart';
import 'widgets/custom_home_sections.dart';
import 'widgets/home_best_offers.dart';
import 'widgets/home_near_you.dart';
import 'widgets/home_shimmer.dart';
import 'widgets/home_swiper.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return Column(
                children: [
                  CustomAppBar(
                    isHome: true,
                    title: LocaleKeys.home.tr(),
                    isSearch: true,
                  ),
                  const HomeState.homeLoading() == state
                      ? const HomeShimmer()
                      : const Column(
                          children: [
                            HomeSwiper(),
                            CustomHomeSections(),
                            HomeBestOffers(),
                            HomeNearYou(),
                          ],
                        ),
                  SizedBox(height: 120.h),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
