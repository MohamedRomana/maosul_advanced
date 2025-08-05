import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maosul_advanced/core/widgets/app_text.dart';
import 'package:maosul_advanced/features/users/home_layout/logic/cubit/home_layout_state.dart';
import 'package:maosul_advanced/generated/locale_keys.g.dart';
import '../../../core/constants/colors.dart';
import '../../../gen/assets.gen.dart';
import 'logic/cubit/home_layout_cubit.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeLayoutCubit>();
    return BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          bottomNavigationBar: Container(
            height: 70.h,
            width: double.infinity,
            padding: EdgeInsetsDirectional.only(
              start: 16.w,
              end: 16.w,
              top: 10.h,
              bottom: 10.h,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    cubit.changeBottomNavIndex(0);
                  },
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        Assets.svg.market,
                        height: 17.h,
                        width: 20.w,
                        fit: BoxFit.cover,
                      ),
                      AppText(
                        text: LocaleKeys.stores.tr(),
                        size: 12.sp,
                        color: const Color(0xffB5C4B5),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    cubit.changeBottomNavIndex(1);
                  },
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        Assets.svg.shoppingCart,
                        height: 17.h,
                        width: 20.w,
                        fit: BoxFit.cover,
                      ),
                      AppText(
                        text: LocaleKeys.cart.tr(),
                        size: 12.sp,
                        color: const Color(0xffB5C4B5),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    cubit.changeBottomNavIndex(2);
                  },
                  child: Container(
                    padding: EdgeInsets.all(14.r),
                    decoration: const BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        Assets.svg.home,
                        height: 23.h,
                        width: 20.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    cubit.changeBottomNavIndex(3);
                  },
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        Assets.svg.deliveryBox,
                        height: 17.h,
                        width: 20.w,
                        fit: BoxFit.cover,
                      ),
                      AppText(
                        text: LocaleKeys.orders.tr(),
                        size: 12.sp,
                        color: const Color(0xffB5C4B5),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    cubit.changeBottomNavIndex(4);
                  },
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        Assets.svg.user,
                        height: 17.h,
                        width: 20.w,
                        fit: BoxFit.cover,
                      ),
                      AppText(
                        text: LocaleKeys.myaccount.tr(),
                        size: 12.sp,
                        color: const Color(0xffB5C4B5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: cubit.bottomNavScreens[cubit.bottomNavIndex],
        );
      },
    );
  }
}
