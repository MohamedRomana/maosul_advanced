// ignore_for_file: non_constant_identifier_names, use_build_context_synchronously

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maosul_advanced/core/cache/cache_helper.dart';
import 'package:maosul_advanced/core/networking/api_result.dart';
import 'package:maosul_advanced/features/users/home_layout/screens/home/data/repos/home_repo.dart';
import '../../../../../../../core/networking/api_error_model.dart';
import '../../data/models/home_request_body_model.dart';
import '../../data/models/home_response_model.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());


   HomeData? homeData;
  void getHome() async {
    emit(const HomeState.homeLoading());
    final response = await _homeRepo.getHome(
      HomeRequestBodyModel(
        lang: CacheHelper.getLang(),
        userId: CacheHelper.getUserId(),
      ),
    );
    response.when(
      success: (homeResponse) {
        if (homeResponse.key == 1) {
          homeData = homeResponse.data;
          emit(HomeState.homeSuccess(homeResponse));
        } else {
          emit(
            HomeState.homeError(
              ApiErrorModel(message: homeResponse.msg, key: homeResponse.key),
            ),
          );
        }
      },
      error: (error) {
        emit(HomeState.homeError(error));
      },
    );
  }
}
