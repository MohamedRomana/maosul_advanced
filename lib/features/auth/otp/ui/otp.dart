import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/constants/colors.dart';
import 'package:maosul_advanced/core/widgets/app_button.dart';
import 'package:maosul_advanced/core/widgets/app_text.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/widgets/flash_message.dart';
import '../../../../generated/locale_keys.g.dart';
import '../logic/otp_cubit.dart';
import '../logic/otp_state.dart';
import 'widgets/otp_logo_text.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OtpCubit>();
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
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const OtpLogoText(),
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
                    cubit.otpCode = code;
                    debugPrint("Completed");
                  },
                  onChanged: (value) {
                    debugPrint(value);
                  },
                ),
                BlocListener<OtpCubit, OtpState>(
                  listenWhen: (previous, current) =>
                      current is OtpError ||
                      current is OtpSuccess ||
                      current is OtpLoading,
                  listener: (context, state) {
                    state.whenOrNull(
                      otpLoading: () => showDialog(
                        context: context,
                        builder: (context) => const Center(
                          child: CircularProgressIndicator(
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                      otpSuccess: (data) {
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                        showFlashMessage(
                          message: data.msg ?? '',
                          type: FlashMessageType.success,
                          context: context,
                        );
                      },
                      otpError: (error) {
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                        showFlashMessage(
                          message: error.message ?? '',
                          type: FlashMessageType.error,
                          context: context,
                        );
                      },
                    );
                  },
                  child: AppButton(
                    top: 30.h,
                    onPressed: () {
                      cubit.sendOtp();
                    },
                    child: AppText(
                      text: LocaleKeys.save.tr(),
                      size: 16.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
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
