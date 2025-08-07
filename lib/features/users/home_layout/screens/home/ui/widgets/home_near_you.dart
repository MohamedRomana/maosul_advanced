import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/helper/extentions.dart';
import 'package:maosul_advanced/features/users/home_layout/screens/home/logic/cubit/home_cubit.dart';
import '../../../../../../../core/routing/routes.dart';
import '../../../../../../../core/widgets/app_cached.dart';
import '../../../../../../../core/widgets/app_text.dart';
import '../../logic/cubit/home_state.dart';

class HomeNearYou extends StatelessWidget {
  const HomeNearYou({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              start: 16.w,
              bottom: 12.h,
              text: 'أماكن قريبة منك',
              size: 18.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            SizedBox(
              height: 120.h,
              child: ListView.separated(
                itemCount: homeCubit.homeData.nearProviders!.length,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                separatorBuilder: (context, index) => SizedBox(width: 10.w),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: (){
                      context.pushNamed(
                      Routes.storeName,
                      arguments: homeCubit.homeData.nearProviders![index].id,
                    );
                  },
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 120.h,
                        width: 200.w,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: AppCachedImage(
                            image:
                                homeCubit.homeData.nearProviders![index].avatar!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 120.h,
                        width: 200.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: const Color(0xff1C6544).withAlpha(100),
                        ),
                      ),
                      PositionedDirectional(
                        bottom: 10.h,
                        start: 6.w,
                        end: 6.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 100.w,
                                  child: AppText(
                                    text: homeCubit
                                        .homeData
                                        .nearProviders![index]
                                        .name!,
                                    size: 12.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    AppText(
                                      text:
                                          (homeCubit
                                                  .homeData
                                                  .nearProviders![index]
                                                  .rate!)
                                              .toString(),
                                      size: 11.sp,
                                      color: const Color(0xffFC6011),
                                      end: 3.w,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20.sp,
                                      color: const Color(0xffFC6011),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            AppText(
                              text:
                                  '${homeCubit.homeData.nearProviders![index].city} - ${homeCubit.homeData.nearProviders![index].country}',
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
          ],
        );
      },
    );
  }
}
