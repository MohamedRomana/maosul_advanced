import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/features/auth/reset_pass/ui/widgets/reset_pass_fields.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../generated/locale_keys.g.dart';

final _formKey = GlobalKey<FormState>();
final _passwordController = TextEditingController();
final _confirmPasswordController = TextEditingController();

class ResetPass extends StatefulWidget {
  const ResetPass({super.key});

  @override
  State<ResetPass> createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {
  String otpCode = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryMedium,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              start: 16.w,
              end: 16.w,
              top: 50.h,
              bottom: 32.h,
            ),
            child: Column(
              children: [
                Column(
                  children: [
                    Image.asset(
                      Assets.img.logo.path,
                      height: 88.h,
                      width: 259.w,
                      fit: BoxFit.fill,
                    ),
                    AppText(
                      text: LocaleKeys.activationCode.tr(),
                      size: 24.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      top: 65.h,
                      bottom: 17.h,
                    ),
                    AppText(
                      text: LocaleKeys
                          .enterTheActivationCodeSentToYourMobileNumber
                          .tr(),
                      color: const Color(0xff00818A),
                      fontWeight: FontWeight.w700,
                      bottom: 40.h,
                    ),
                  ],
                ),
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  animationType: AnimationType.scale,
                  cursorColor: AppColors.primary,
                  textStyle: TextStyle(fontSize: 24.sp, color: Colors.white),
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10.r),
                    fieldHeight: 60.h,
                    fieldWidth: 60.h,
                    activeColor: Colors.white,
                    inactiveColor: AppColors.primary,
                    inactiveFillColor: Colors.white,
                    activeFillColor: AppColors.primary,
                    selectedColor: AppColors.primary,
                    selectedFillColor: Colors.transparent,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  onCompleted: (code) {
                    otpCode = code;
                    debugPrint("Completed");
                  },
                  onChanged: (value) {
                    debugPrint(value);
                  },
                ),
                ResetPassFields(
                  formKey: _formKey,
                  passwordController: _passwordController,
                  confirmPasswordController: _confirmPasswordController,
                ),
                AppButton(
                  top: 30.h,
                  onPressed: () {},
                  child: AppText(
                    text: LocaleKeys.save.tr(),
                    size: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
