import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/constants/colors.dart';
import '../../../../core/widgets/app_text.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../generated/locale_keys.g.dart';
import 'widgets/choose_type.dart';

class TypesView extends StatelessWidget {
  const TypesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryMedium,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: 16.w,
            vertical: 50.h,
          ),
          child: Column(
            children: [
              Image.asset(
                Assets.img.logo.path,
                height: 88.h,
                width: 259.w,
                fit: BoxFit.fill,
              ),
              AppText(
                text: LocaleKeys.userType.tr(),
                size: 24.sp,
                fontWeight: FontWeight.w700,
                top: 65.h,
                bottom: 40.h,
              ),
              const ChooseType(),
            ],
          ),
        ),
      ),
    );
  }
}
