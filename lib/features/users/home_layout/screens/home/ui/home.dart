import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../../generated/locale_keys.g.dart';
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
    return Scaffold(
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
    );
  }
}
