import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/constants/colors.dart';
import '../../../../../../../core/widgets/app_text.dart';
import '../../../../../../../gen/assets.gen.dart';
import '../../../../../../../generated/locale_keys.g.dart';

class HomeBestOffers extends StatelessWidget {
  const HomeBestOffers({super.key});

  @override
  Widget build(BuildContext context) {
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
            itemCount: 20,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            separatorBuilder: (context, index) => SizedBox(width: 10.w),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Stack(
              children: [
                Container(
                  height: 150.h,
                  width: 140.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    image: DecorationImage(
                      image: AssetImage(Assets.img.burger.path),
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
                        text: '30%',
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
                        text: 'اسم المتجر',
                        size: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      AppText(
                        text: 'حي الصحافة - ش الملك سعود',
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
        SizedBox(height: 20.h),
      ],
    );
  }
}
