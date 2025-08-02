import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/cache/cache_helper.dart';
import 'package:maosul_advanced/core/widgets/app_button.dart';
import 'package:maosul_advanced/generated/locale_keys.g.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/app_text.dart';
import '../../../../gen/assets.gen.dart';
import 'widgets/login_fields.dart';

final _formKey = GlobalKey<FormState>();
final _phoneController = TextEditingController();
final _passwordController = TextEditingController();
String phoneCode = '';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryMedium,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            start: 16.w,
            end: 16.w,
            top: 50.h,
            bottom: 32.h,
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
                text: CacheHelper.getUserType() == "client"
                    ? 'تسجيل زبون'
                    : 'تسجيل موظف',
                size: 24.sp,
                fontWeight: FontWeight.w700,
                top: 65.h,
                bottom: 40.h,
              ),
              LoginFields(
                formKey: _formKey,
                phoneController: _phoneController,
                passwordController: _passwordController,
              ),
              AppButton(
                top: 30.h,
                onPressed: () {},
                child: AppText(
                  text: LocaleKeys.login.tr(),
                  size: 16.sp,
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
