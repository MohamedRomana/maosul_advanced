import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/widgets/app_button.dart';
import 'package:maosul_advanced/core/widgets/app_input.dart';
import 'package:maosul_advanced/core/widgets/app_text.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../core/widgets/custom_bottom_nav.dart';
import '../../../../../core/widgets/custom_drawer.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../../generated/locale_keys.g.dart';
import '../../../store_name/ui/store_name.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(color: AppColors.primaryMedium),
      ),
      controller: advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: true,
      openScale: 0.8,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      drawer: const CustomDrawer(),

      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(230.h),
          child: CustomAppBar(
            title: LocaleKeys.callus.tr(),
            isStore: true,
            isHome: false,
            widget: Container(
              height: 112.h,
              width: 343.w,
              padding: EdgeInsets.symmetric(horizontal: 53.w, vertical: 16.h),
              decoration: BoxDecoration(
                color: AppColors.primaryMedium,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5.r,
                    spreadRadius: 1.r,
                    offset: Offset(0, 5.r),
                  ),
                ],
              ),
              child: Image.asset(Assets.img.logo.path, fit: BoxFit.fill),
            ),
          ),
        ),
        bottomNavigationBar: const CustomBottomNav(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(text: LocaleKeys.name.tr(), fontWeight: FontWeight.w600),
              AppInput(
                filled: true,
                hint: LocaleKeys.full_name.tr(),
                enabledBorderColor: Colors.grey,
                top: 16.h,
                start: 0,
                end: 0,
              ),
              AppText(
                top: 16.h,
                text: LocaleKeys.email.tr(),
                fontWeight: FontWeight.w600,
              ),
              AppInput(
                filled: true,
                hint: LocaleKeys.email.tr(),
                enabledBorderColor: Colors.grey,
                inputType: TextInputType.emailAddress,
                top: 16.h,
                start: 0,
                end: 0,
              ),
              AppText(
                top: 16.h,
                text: LocaleKeys.message_text.tr(),
                fontWeight: FontWeight.w600,
              ),
              AppInput(
                filled: true,
                hint: LocaleKeys.your_message.tr(),
                enabledBorderColor: Colors.grey,
                inputType: TextInputType.emailAddress,
                top: 16.h,
                start: 0,
                end: 0,
                maxLines: 5,
              ),
              SizedBox(height: 20.h),
              AppButton(
                onPressed: () {},
                child: AppText(
                  text: LocaleKeys.send.tr(),
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
