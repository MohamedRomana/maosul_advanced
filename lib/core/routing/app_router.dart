// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maosul_advanced/core/di/dependancy_injection.dart';
import 'package:maosul_advanced/features/auth/forget_pass/logic/forget_pass_cubit.dart';
import 'package:maosul_advanced/features/auth/login/logic/login_cubit.dart';
import 'package:maosul_advanced/features/auth/otp/logic/otp_cubit.dart';
import 'package:maosul_advanced/features/auth/register/logic/register_cubit.dart';
import 'package:maosul_advanced/features/auth/reset_pass/logic/reset_pass_cubit.dart';
import 'package:maosul_advanced/features/start/languages/logic/lang_cubit.dart';
import 'package:maosul_advanced/features/start/types/logic/types_cubit.dart';
import 'package:maosul_advanced/features/users/home_layout/logic/cubit/home_layout_cubit.dart';
import '../../features/auth/forget_pass/ui/forget_pass.dart';
import '../../features/auth/login/ui/log_in.dart';
import '../../features/auth/otp/ui/otp.dart';
import '../../features/auth/register/ui/register.dart';
import '../../features/auth/reset_pass/ui/reset_pass.dart';
import '../../features/start/languages/ui/languages_view.dart';
import '../../features/start/splash/splash.dart';
import '../../features/start/types/ui/types_view.dart';
import '../../features/users/home_layout/home_layout.dart';
import 'routes.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    final argument = settings.arguments;

    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const Splash());
      case Routes.languages:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => LangCubit(),
            child: const LanguagesView(),
          ),
        );
      case Routes.types:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => TypesCubit(),
            child: const TypesView(),
          ),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => LoginCubit(getIt()),
            child: const LogIn(),
          ),
        );
      case Routes.register:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => RegisterCubit(getIt()),
            child: const Register(),
          ),
        );
      case Routes.otp:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => OtpCubit(getIt()),
            child: const Otp(),
          ),
        );
      case Routes.forgetPass:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ForgetPassCubit(getIt()),
            child: const ForgetPass(),
          ),
        );
      case Routes.resetPass:
        final userId = argument as String;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ResetPassCubit(getIt(), userId: userId),
            child: const ResetPass(),
          ),
        );
      case Routes.homeLayout:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeLayoutCubit(),
            child: const HomeLayout(),
          ),
        );
      default:
        return null;
    }
  }
}
