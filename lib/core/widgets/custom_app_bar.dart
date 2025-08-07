import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maosul_advanced/core/cache/cache_helper.dart';
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
  final Widget? widget;
  const CustomAppBar({
    super.key,
    this.isSearch = false,
    this.isHome = false,
    this.isStore = false,
    required this.title,
    this.widget,
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
                    Row(
                      children: [
                        SizedBox(
                          width: 140.w,
                          child: AppText(
                            textAlign: TextAlign.end,
                            text: CacheHelper.getAddress(),
                            size: 12.sp,
                            end: 6.w,
                          ),
                        ),
                        const Icon(
                          Icons.location_on,
                          color: AppColors.primary,
                        ),
                      ],
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
            child: widget ?? Container(),
          ),
        },
      ],
    );
  }
}
