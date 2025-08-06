import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maosul_advanced/core/widgets/custom_shimmer.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/widgets/app_cached.dart';
import '../../../../../core/widgets/app_text.dart';
import '../../../../../gen/assets.gen.dart';
import '../../logic/cubit/store_name_cubit.dart';
import '../../logic/cubit/store_name_state.dart';

class StoreNameDetailsBar extends StatelessWidget {
  const StoreNameDetailsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreNameCubit, StoreNameState>(
      builder: (context, state) {
        final cubit = context.read<StoreNameCubit>();
        return const StoreNameState.storeNameLoading() == state
            ? CustomShimmer(
                child: Container(
                  height: 150.h,
                  width: 343.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              )
            : Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: AppCachedImage(
                      image: cubit.storeData?.avatar ?? "",
                      fit: BoxFit.fill,
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
                              text: cubit.storeData?.rate.toString() ?? '',
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
                            text: cubit.storeData?.name ?? '',
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
                                    text:
                                        'يبعد ${cubit.storeData?.distance} كم',
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
                                    text:
                                        'وقت التوصيل :  ${cubit.storeData?.deliveryTime} دقيقة',
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
                                    text:
                                        'التوصيل : ${cubit.storeData?.delivery} ر.س',
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
              );
      },
    );
  }
}
