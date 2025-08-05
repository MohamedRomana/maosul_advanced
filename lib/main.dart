// ignore_for_file: deprecated_member_use
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/di/dependancy_injection.dart';
import 'package:maosul_advanced/core/routing/app_router.dart';
import 'core/constants/colors.dart';
import 'core/cache/cache_helper.dart';
import 'core/map/location_helper.dart';
import 'core/routing/routes.dart';
import 'gen/fonts.gen.dart';
import 'generated/codegen_loader.g.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await CacheHelper.init();
  setUpGetIt();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // await NotificationHelper.init();
  LocationHelper.determinePosition();
  await EasyLocalization.ensureInitialized();
  debugPrint("userId is ${CacheHelper.getUserId()}");

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      saveLocale: true,
      useOnlyLangCode: true,
      startLocale: Locale(
        CacheHelper.getLang() == "" ? "ar" : CacheHelper.getLang(),
      ),
      assetLoader: const CodegenLoader(),
      path: 'assets/Lang',
      fallbackLocale: Locale(
        CacheHelper.getLang() == "" ? "ar" : CacheHelper.getLang(),
      ),
      child: MyApp(appRouter: AppRouter()),
    ),
  );
}

class MyApp extends StatefulWidget {
  final AppRouter appRouter;
  const MyApp({super.key, required this.appRouter});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // NotificationHelper.onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: MaterialApp(
            theme: ThemeData(
              fontFamily: FontFamily.cairo,
              scaffoldBackgroundColor: Colors.white,
              textSelectionTheme: TextSelectionThemeData(
                cursorColor: AppColors.primaryMedium,
                selectionColor: AppColors.primary.withOpacity(0.5),
                selectionHandleColor: AppColors.primaryMedium,
              ),
            ),
            debugShowCheckedModeBanner: false,
            builder: (context, child) => child!,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            navigatorKey: navigatorKey,
            home: child,
            onGenerateRoute: widget.appRouter.onGenerateRoute,
            initialRoute: Routes.splash,
          ),
        );
      },
    );
  }
}
