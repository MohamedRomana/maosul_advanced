import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/helper/extentions.dart';
import '../../../../../../../core/constants/colors.dart';
import '../../../../../../../core/routing/routes.dart';
import '../../../../../../../core/widgets/app_text.dart';
import '../../../../../../../generated/locale_keys.g.dart';

class FavouritesContainer extends StatelessWidget {
  const FavouritesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(Routes.favourites);
      },
      child: Container(
        margin: EdgeInsets.only(top: 24.h),
        width: 343.w,
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 11.h),
        decoration: BoxDecoration(
          color: AppColors.primaryMedium,
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Row(
          children: [
            AppText(text: LocaleKeys.favourite.tr(), size: 16.sp),
            const Spacer(),
            const Icon(Icons.favorite, color: AppColors.primary),
          ],
        ),
      ),
    );
  }
}