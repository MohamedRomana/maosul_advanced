import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maosul_advanced/core/helper/extentions.dart';
import '../../gen/assets.gen.dart';
import '../cache/cache_helper.dart';
import '../constants/colors.dart';
import '../routing/routes.dart';
import 'app_text.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: Colors.white,
          padding: EdgeInsetsDirectional.only(
            bottom: 26.h,
            start: 45.w,
            end: 46.w,
            top: 60.h,
          ),
          child: Image.asset(
            Assets.img.logo.path,
            height: 67.h,
            width: 200.w,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(
            start: 17.w,
            end: 17.w,
            top: 24.h,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(Assets.svg.dashboard),
                  AppText(
                    text: 'الأقسام',
                    size: 16.sp,
                    color: Colors.black,
                    start: 11.w,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(vertical: 20.h),
                child: Divider(color: const Color(0xff0D335D).withAlpha(70)),
              ),
              Row(
                children: [
                  SvgPicture.asset(Assets.svg.sms),
                  AppText(
                    text: 'اتصل بنا',
                    size: 16.sp,
                    color: Colors.black,
                    start: 11.w,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(vertical: 20.h),
                child: Divider(color: const Color(0xff0D335D).withAlpha(70)),
              ),
              Row(
                children: [
                  SvgPicture.asset(Assets.svg.info),
                  AppText(
                    text: 'عن التطبيق',
                    size: 16.sp,
                    color: Colors.black,
                    start: 11.w,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(vertical: 20.h),
                child: Divider(color: const Color(0xff0D335D).withAlpha(70)),
              ),
              Row(
                children: [
                  SvgPicture.asset(Assets.svg.message),
                  AppText(
                    text: 'الدعم الفني',
                    size: 16.sp,
                    color: Colors.black,
                    start: 11.w,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(vertical: 20.h),
                child: Divider(color: const Color(0xff0D335D).withAlpha(70)),
              ),
              Row(
                children: [
                  SvgPicture.asset(Assets.svg.document),
                  AppText(
                    text: 'سياسة الخصوصية',
                    size: 16.sp,
                    color: Colors.black,
                    start: 11.w,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(vertical: 20.h),
                child: Divider(color: const Color(0xff0D335D).withAlpha(70)),
              ),
              Row(
                children: [
                  SvgPicture.asset(Assets.svg.lang),
                  AppText(
                    text: CacheHelper.getLang() == "ar"
                        ? 'اللغة العربية'
                        : 'اللغة الانجليزية',
                    size: 16.sp,
                    color: Colors.black,
                    start: 11.w,
                  ),
                  const Spacer(),

                  Transform.scale(
                    scale: 0.8.r,
                    child: Switch(
                      padding: EdgeInsets.zero,
                      trackOutlineColor: const WidgetStatePropertyAll(
                        Colors.transparent,
                      ),
                      activeColor: AppColors.primary,
                      activeTrackColor: const Color(0xffD4D4D4),
                      inactiveThumbColor: const Color(0xffB5B2B2),
                      inactiveTrackColor: const Color(0xffDCDCDC),
                      value: CacheHelper.getLang() == "en" ? true : false,
                      onChanged: (bool value) {
                        setState(() {
                          context.pushNamedAndRemoveUntil(
                            Routes.splash,
                            predicate: (route) => false,
                          );
                          if (CacheHelper.getLang() == "ar") {
                            CacheHelper.setLang('en');
                            context.setLocale(const Locale('en'));
                          } else {
                            CacheHelper.setLang('ar');
                            context.setLocale(const Locale('ar'));
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(vertical: 20.h),
                child: Divider(color: const Color(0xff0D335D).withAlpha(70)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
