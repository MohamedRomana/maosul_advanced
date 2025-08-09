// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maosul_advanced/features/users/sections/logic/cubit/sections_cubit.dart';
import 'package:maosul_advanced/features/users/store_name/ui/store_name.dart';
import '../../features/auth/forget_pass/logic/forget_pass_cubit.dart';
import '../../features/auth/forget_pass/ui/forget_pass.dart';
import '../../features/auth/login/logic/login_cubit.dart';
import '../../features/auth/login/ui/log_in.dart';
import '../../features/auth/otp/logic/otp_cubit.dart';
import '../../features/auth/otp/ui/otp.dart';
import '../../features/auth/register/logic/register_cubit.dart';
import '../../features/auth/register/ui/register.dart';
import '../../features/auth/reset_pass/logic/reset_pass_cubit.dart';
import '../../features/auth/reset_pass/ui/reset_pass.dart';
import '../../features/start/languages/logic/lang_cubit.dart';
import '../../features/start/languages/ui/languages_view.dart';
import '../../features/start/on_boarding/logic/cubit/intro_cubit.dart';
import '../../features/start/on_boarding/ui/on_boarding.dart';
import '../../features/start/splash/splash.dart';
import '../../features/start/types/logic/types_cubit.dart';
import '../../features/start/types/ui/types_view.dart';
import '../../features/users/edit_profile/logic/cubit/edit_profile_cubit.dart';
import '../../features/users/edit_profile/ui/edit_profile.dart';
import '../../features/users/home_layout/home_layout.dart';
import '../../features/users/home_layout/logic/cubit/home_layout_cubit.dart';
import '../../features/users/sections/ui/sections.dart';
import '../../features/users/store_name/logic/cubit/store_name_cubit.dart';
import '../di/dependancy_injection.dart';
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
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => IntroCubit(getIt())..getIntro(),
            child: const OnBoarding(),
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
        final int index = settings.arguments as int? ?? 2;

        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeLayoutCubit()..changeBottomNavIndex(index),
            child: const HomeLayout(),
          ),
        );
      case Routes.sections:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => HomeLayoutCubit()),
              BlocProvider(
                create: (_) => SectionsCubit(getIt())..getSections(),
              ),
            ],
            child: const Sections(),
          ),
        );
      case Routes.storeName:
        final providerId = settings.arguments as int;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) =>
                StoreNameCubit(getIt())
                  ..getStoreName(providerId: providerId.toString()),
            child: StoreName(providerId: providerId.toString()),
          ),
        );
      case Routes.editProfile:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [BlocProvider(create: (_) => EditProfileCubit())],
            child: const EditProfile(),
          ),
        );
      default:
        return MaterialPageRoute(builder: (_) => const Splash());
    }
  }
}
