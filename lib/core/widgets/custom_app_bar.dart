import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maosul_advanced/features/users/home_layout/screens/home/logic/cubit/home_cubit.dart';
import '../../features/users/home_layout/screens/home/logic/cubit/home_state.dart';
import '../../gen/assets.gen.dart';
import '../../generated/locale_keys.g.dart';
import '../constants/colors.dart';
import 'app_input.dart';
import 'app_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 113.h,
              width: double.infinity,
              padding: EdgeInsetsDirectional.only(
                bottom: 41.h,
                start: 16.w,
                end: 16.w,
                top: 50.h,
              ),
              decoration: const BoxDecoration(color: AppColors.primaryMedium),
              child: Row(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        Assets.svg.drawer,
                        height: 15.h,
                        width: 19.w,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 150.w,
                        child: AppText(
                          text: LocaleKeys.home.tr(),
                          size: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          start: 16.w,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  BlocBuilder<HomeCubit, HomeState>(
                    builder: (context, state) {
                      return Row(
                        children: [
                          SizedBox(
                            width: 140.w,
                            child: AppText(
                              textAlign: TextAlign.end,
                              text: context.read<HomeCubit>().homeAddress,
                              size: 12.sp,
                              end: 6.w,
                            ),
                          ),
                          const Icon(
                            Icons.location_on,
                            color: AppColors.primary,
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
              height: 30.h,
              width: double.infinity,
              color: Colors.white,
            ),
            SizedBox(height: 16.h),
          ],
        ),

        Positioned(
          top: 93.h,
          left: 0,
          right: 0,
          child: SizedBox(
            height: 40.h,
            child: AppInput(
              filled: true,
              color: Colors.white,
              hint: LocaleKeys.search.tr(),
              prefixIcon: const Icon(
                Icons.search,
                color: AppColors.primaryMedium,
              ),
              hintColor: AppColors.primaryMedium,
            ),
          ),
        ),
      ],
    );
  }
}
