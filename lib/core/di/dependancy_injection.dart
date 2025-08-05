import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:maosul_advanced/features/auth/forget_pass/apis/forget_pass_api_service.dart';
import 'package:maosul_advanced/features/auth/login/data/apis/login_api_service.dart';
import 'package:maosul_advanced/features/auth/login/data/repos/login_repo.dart';
import 'package:maosul_advanced/features/auth/otp/apis/otp_api_service.dart';
import 'package:maosul_advanced/features/auth/reset_pass/apis/reset_pass_api_service.dart';
import '../../features/auth/forget_pass/data/repos/forget_pass_repo.dart';
import '../../features/auth/otp/data/repos/otp_repo.dart';
import '../../features/auth/register/apis/register_api_service.dart';
import '../../features/auth/register/data/repos/register_repo.dart';
import '../../features/auth/reset_pass/data/repos/reset_pass_repo.dart';
import '../../features/start/on_boarding/data/apis/intro_api_service.dart';
import '../../features/start/on_boarding/data/repos/intro_repo.dart';
import '../../features/users/home_layout/screens/home/apis/home_api_service.dart';
import '../../features/users/home_layout/screens/home/data/repos/home_repo.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  Dio dio = DioFactory.getDio();

  // INTRO

  getIt.registerLazySingleton<IntroApiService>(() => IntroApiService(dio));
  getIt.registerLazySingleton<IntroRepo>(() => IntroRepo(getIt()));

  // LOGIN
  getIt.registerLazySingleton<LoginApiService>(() => LoginApiService(dio));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));

  // REGISTER
  getIt.registerLazySingleton<RegisterApiService>(
    () => RegisterApiService(dio),
  );
  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));

  // OTP
  getIt.registerLazySingleton<OtpApiService>(() => OtpApiService(dio));
  getIt.registerLazySingleton<OtpRepo>(() => OtpRepo(getIt()));

  // FORGET PASS
  getIt.registerLazySingleton<ForgetPassApiService>(
    () => ForgetPassApiService(dio),
  );
  getIt.registerLazySingleton<ForgetPassRepo>(() => ForgetPassRepo(getIt()));

  // RESET PASS
  getIt.registerLazySingleton<ResetPassApiService>(
    () => ResetPassApiService(dio),
  );
  getIt.registerLazySingleton<ResetPassRepo>(() => ResetPassRepo(getIt()));

  // HOME
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
}
