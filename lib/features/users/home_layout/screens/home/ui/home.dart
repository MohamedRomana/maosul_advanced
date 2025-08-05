import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/di/dependancy_injection.dart';
import '../../../../../../core/map/logic/cubit/map_cubit.dart';
import '../../../../../../core/widgets/custom_app_bar.dart';
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
                MultiBlocProvider(
                  providers: [
                    BlocProvider<MapCubit>(create: (_) => MapCubit()),
                    BlocProvider<HomeCubit>(
                      create: (context) =>
                          HomeCubit(getIt())..changeAddress(context),
                    ),
                  ],
                  child: const CustomAppBar(),
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
