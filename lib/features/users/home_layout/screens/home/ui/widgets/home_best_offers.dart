import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/helper/extentions.dart';
import 'package:maosul_advanced/core/widgets/app_cached.dart';
import 'package:maosul_advanced/features/users/home_layout/screens/home/logic/cubit/home_cubit.dart';
import '../../../../../../../core/constants/colors.dart';
import '../../../../../../../core/routing/routes.dart';
import '../../../../../../../core/widgets/app_text.dart';
import '../../../../../../../generated/locale_keys.g.dart';
import '../../logic/cubit/home_state.dart';

class HomeBestOffers extends StatelessWidget {
  const HomeBestOffers({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              start: 16.w,
              text: LocaleKeys.bestoffers.tr(),
              size: 18.sp,
              fontWeight: FontWeight.w700,
              bottom: 12.h,
              color: Colors.black,
            ),
            SizedBox(
              height: 150.h,
              child: ListView.separated(
                itemCount: cubit.homeData.bestProviders!.length,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                separatorBuilder: (context, index) => SizedBox(width: 10.w),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    context.pushNamed(
                      Routes.storeName,
                      arguments: cubit.homeData.bestProviders![index].id,
                    );
                  },
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 150.h,
                        width: 140.w,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: AppCachedImage(
                            image:
                                cubit.homeData.bestProviders![index].avatar ??
                                "",
                            height: 150.h,
                            width: 140.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 150.h,
                        width: 140.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: const Color(0xff1C6544).withAlpha(100),
                        ),
                      ),
                      PositionedDirectional(
                        top: 10.h,
                        start: 0.w,
                        child: Container(
                          height: 21.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadiusDirectional.only(
                              topEnd: Radius.circular(10.r),
                              bottomEnd: Radius.circular(10.r),
                            ),
                          ),
                          child: Center(
                            child: AppText(
                              text:
                                  '${cubit.homeData.bestProviders![index].discount}%',
                              size: 12.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      PositionedDirectional(
                        bottom: 13.h,
                        start: 5.w,
                        end: 5.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              text:
                                  cubit.homeData.bestProviders![index].name ??
                                  "",
                              size: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                            AppText(
                              lines: 2,
                              top: 5.h,
                              text:
                                  " ${cubit.homeData.bestProviders![index].city} - ${cubit.homeData.bestProviders![index].country}",
                              size: 10.sp,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        );
      },
    );
  }
}
