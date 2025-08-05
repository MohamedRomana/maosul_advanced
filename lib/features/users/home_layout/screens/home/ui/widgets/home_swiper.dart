import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/widgets/app_cached.dart';
import 'package:maosul_advanced/features/users/home_layout/screens/home/logic/cubit/home_cubit.dart';
import 'package:maosul_advanced/features/users/home_layout/screens/home/logic/cubit/home_state.dart';
import '../../../../../../../core/constants/colors.dart';

class HomeSwiper extends StatelessWidget {
  const HomeSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Container(
          height: 150.h,
          width: 343.w,
          margin: EdgeInsets.only(bottom: 20.h),
          decoration: BoxDecoration(
            color: AppColors.primaryLight,
            borderRadius: BorderRadius.circular(15.r),
            boxShadow: [
              BoxShadow(
                color: AppColors.primaryMedium,
                blurRadius: 5.r,
                spreadRadius: 1.r,
                offset: Offset(0, 5.r),
              ),
            ],
          ),
          child: Swiper(
            itemCount: cubit.homeData.sliders!.length,
            autoplay: true,
            pagination: const SwiperPagination(
              alignment: Alignment.bottomCenter,
              builder: DotSwiperPaginationBuilder(
                color: AppColors.primaryMedium,
                activeColor: AppColors.primaryLight,
                size: 8,
                activeSize: 8,
              ),
            ),
            itemBuilder: (context, index) => SizedBox(
              height: 150.h,
              width: 343.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: AppCachedImage(
                  image: cubit.homeData.sliders![index].image ?? "",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
