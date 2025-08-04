// ignore_for_file: use_build_context_synchronously

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/cache/cache_helper.dart';
import 'package:maosul_advanced/core/helper/extentions.dart';
import 'package:maosul_advanced/features/start/types/logic/types_cubit.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_text.dart';
import '../../../../../generated/locale_keys.g.dart';
import '../../../../users/home_layout/logic/cubit/home_layout_cubit.dart';
import '../../logic/types_state.dart';

class ChooseType extends StatelessWidget {
  const ChooseType({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<TypesCubit>();
    return BlocBuilder<TypesCubit, TypesState>(
      builder: (context, state) {
        return Column(
          children: [
            Container(
              height: 48.h,
              width: 311.w,
              margin: EdgeInsets.only(
                top: 40.h,
                bottom: 30.h,
                right: 16.w,
                left: 16.w,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      cubit.changeType(0);
                    },
                    child: Container(
                      height: 48.h,
                      width: 155.w,
                      decoration: BoxDecoration(
                        color: cubit.typesIndex == 0
                            ? AppColors.primary
                            : Colors.white,
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: Center(
                        child: AppText(
                          text: LocaleKeys.client.tr(),
                          color: cubit.typesIndex == 0
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      cubit.changeType(1);
                    },
                    child: Container(
                      height: 48.h,
                      width: 155.w,
                      decoration: BoxDecoration(
                        color: cubit.typesIndex == 1
                            ? AppColors.primary
                            : Colors.white,
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: Center(
                        child: AppText(
                          text: LocaleKeys.provider.tr(),
                          color: cubit.typesIndex == 1
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AppButton(
              onPressed: () async {
                if (cubit.typesIndex == 0) {
                  await CacheHelper.setUserType('client');
                } else {
                  await CacheHelper.setUserType('provider');
                }
                context.pop();
                context.read<HomeLayoutCubit>().changeBottomNavIndex(2);
                context.pushNamedAndRemoveUntil(
                  Routes.homeLayout,
                  predicate: (Route<dynamic> route) {
                    return false;
                  },
                );
              },
              child: AppText(
                text: LocaleKeys.save.tr(),
                color: Colors.white,
                size: 16.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        );
      },
    );
  }
}
