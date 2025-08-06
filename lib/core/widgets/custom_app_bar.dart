import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maosul_advanced/core/widgets/app_cached.dart';
import '../../features/users/home_layout/screens/home/logic/cubit/home_cubit.dart';
import '../../features/users/home_layout/screens/home/logic/cubit/home_state.dart';
import '../../gen/assets.gen.dart';
import '../../generated/locale_keys.g.dart';
import '../constants/colors.dart';
import 'app_input.dart';
import 'app_text.dart';

class CustomAppBar extends StatelessWidget {
  final bool isHome;
  final bool isStore;
  final String title;
  final bool isSearch;
  const CustomAppBar({
    super.key,
    this.isSearch = false,
    this.isHome = false,
    this.isStore = false,
    required this.title,
  });

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
                          text: title,
                          size: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          start: 16.w,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  if (isHome) ...{
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
                  },
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

        if (isSearch) ...{
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
        } else if (isStore) ...{
          Positioned(
            top: 93.h,
            left: 15.w,
            right: 15.w,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: AppCachedImage(
                    image:
                        'https://abdo.efadh.net/maosul/public/images/users/23-11-211637678685834963275.jpg',
                    fit: BoxFit.cover,
                    height: 150.h,
                    width: 343.w,
                  ),
                ),
                Container(
                  height: 150.h,
                  width: 343.w,
                  decoration: BoxDecoration(
                    color: Colors.black.withAlpha(150),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                PositionedDirectional(
                  top: 10.h,
                  start: 10.w,
                  child: Container(
                    height: 22.h,
                    width: 50.w,
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 2.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: AppColors.primary,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 15.sp),
                        SizedBox(
                          width: 30.w,
                          child: AppText(
                            textAlign: TextAlign.center,
                            text: '4.5',
                            size: 12.sp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                PositionedDirectional(
                  bottom: 10.h,
                  start: 10.w,
                  end: 10.w,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 343.w,
                        child: AppText(
                          textAlign: TextAlign.center,
                          text: 'اسم المتجر',
                          size: 12.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          bottom: 5.h,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(Assets.svg.location),
                              SizedBox(
                                width: 70.w,
                                child: AppText(
                                  start: 3.w,
                                  textAlign: TextAlign.start,
                                  text: 'يبعد 2.5 كم',
                                  size: 10.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(Assets.svg.timer),
                              SizedBox(
                                width: 105.w,
                                child: AppText(
                                  start: 3.w,
                                  textAlign: TextAlign.start,
                                  text: 'وقت التوصيل : 10-20 د',
                                  size: 10.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(Assets.svg.dollar),
                              SizedBox(
                                width: 80.w,
                                child: AppText(
                                  start: 3.w,
                                  textAlign: TextAlign.start,
                                  text: 'التوصيل : 12 ر.س',
                                  size: 10.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        },
      ],
    );
  }
}
