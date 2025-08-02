import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/colors.dart';
import 'widgets/login_buttons.dart';
import 'widgets/login_fields.dart';
import 'widgets/login_logo_text.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

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
              children: [LoginLogoText(), LoginFields(), LoginButtons()],
            ),
          ),
        ),
      ),
    );
  }
}
