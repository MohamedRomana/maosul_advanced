import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/helper/extentions.dart';
import 'package:maosul_advanced/core/widgets/app_cached.dart';
import 'package:maosul_advanced/features/users/home_layout/screens/home/logic/cubit/home_cubit.dart';
import '../../../../../../../core/constants/colors.dart';
import '../../../../../../../core/routing/routes.dart';
import '../../../../../../../core/widgets/app_text.dart';
import '../../logic/cubit/home_state.dart';

class CustomHomeSections extends StatelessWidget {
  const CustomHomeSections({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [
                AppText(
                  start: 16.w,
                  text: 'الاقسام',
                  size: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () => context.pushNamed(Routes.sections),
                  child: AppText(end: 16.w, text: 'عرض الكل', size: 12.sp),
                ),
              ],
            ),

            SizedBox(height: 15.h),
            SizedBox(
              height: 40.h,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                itemCount: cubit.homeData!.sections!.length,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 6.w),
                itemBuilder: (context, index) => Container(
                  width: 105.w,
                  padding: EdgeInsets.all(8.r),
                  decoration: BoxDecoration(
                    color: AppColors.primaryMedium,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Row(
                    children: [
                      AppCachedImage(
                        image: cubit.homeData!.sections![index].image ?? '',
                        height: 20.w,
                        width: 20.w,
                        fit: BoxFit.fill,
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 60.w,
                        child: AppText(
                          text: cubit.homeData!.sections![index].title ?? '',
                          color: Colors.black,
                          size: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.h),
          ],
        );
      },
    );
  }
}
