import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:maosul_advanced/features/auth/login/data/apis/login_api_service.dart';
import 'package:maosul_advanced/features/auth/login/data/repos/login_repo.dart';

import '../../features/auth/register/apis/register_api_service.dart';
import '../../features/auth/register/data/repos/register_repo.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  Dio dio = DioFactory.getDio();

// LOGIN
  getIt.registerLazySingleton<LoginApiService>(() => LoginApiService(dio));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));

// REGISTER
  getIt.registerLazySingleton<RegisterApiService>(()=> RegisterApiService(dio));
  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
}
