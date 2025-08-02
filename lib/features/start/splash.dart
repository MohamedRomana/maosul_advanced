// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/widgets/app_router.dart';
import 'package:maosul_advanced/features/start/on_boarding/ui/on_boarding.dart';
import '../../gen/assets.gen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _customNavigator(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          Assets.img.logo.path,
          height: 88.h,
          width: 259.w,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

void _customNavigator(BuildContext context) {
  Future.delayed(const Duration(seconds: 3), () {
    AppRouter.navigateAndFinish(context, const OnBoarding());
  });
}
