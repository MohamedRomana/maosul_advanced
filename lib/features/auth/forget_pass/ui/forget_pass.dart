import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/constants/colors.dart';
import 'widgets/forget_pass_buttons.dart';
import 'widgets/forget_pass_fields.dart';
import 'widgets/forget_pass_logo_text.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({super.key});

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
            child: const Column(
              children: [
                ForgetPassLogoText(),
                ForgetPassFields(),
                ForgetPassButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
