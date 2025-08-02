// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/cache/cache_helper.dart';
import 'package:maosul_advanced/core/widgets/app_router.dart';
import 'package:maosul_advanced/features/auth/login/logic/login_cubit.dart';
import 'package:maosul_advanced/features/auth/login/ui/log_in.dart';
import 'package:maosul_advanced/features/start/languages/logic/lang_cubit.dart';
import 'package:maosul_advanced/features/start/languages/ui/languages_view.dart';
import 'package:maosul_advanced/features/start/on_boarding/ui/on_boarding.dart';
import 'package:maosul_advanced/features/start/types/logic/types_cubit.dart';
import 'package:maosul_advanced/features/start/types/ui/types_view.dart';
import '../../../core/di/dependancy_injection.dart';
import '../../../gen/assets.gen.dart';

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
    CacheHelper.getShowIntro() != false
        ? CacheHelper.getLang() != ""
              ? CacheHelper.getUserType() != ""
                    ? AppRouter.navigateAndPop(
                        context,
                        BlocProvider(
                          create: (context) => LoginCubit(getIt()),
                          child: const LogIn(),
                        ),
                      )
                    : AppRouter.navigateAndPop(
                        context,
                        BlocProvider(
                          create: (context) => TypesCubit(),
                          child: const TypesView(),
                        ),
                      )
              : AppRouter.navigateAndPop(
                  context,
                  BlocProvider(
                    create: (context) => LangCubit(),
                    child: const LanguagesView(),
                  ),
                )
        : AppRouter.navigateAndPop(context, const OnBoarding());
  });
}
