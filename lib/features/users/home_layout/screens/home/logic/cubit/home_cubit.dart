// ignore_for_file: non_constant_identifier_names, use_build_context_synchronously

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:maosul_advanced/core/cache/cache_helper.dart';
import 'package:maosul_advanced/core/map/logic/cubit/map_cubit.dart';
import 'package:maosul_advanced/core/networking/api_result.dart';
import 'package:maosul_advanced/features/users/home_layout/screens/home/data/repos/home_repo.dart';
import '../../../../../../../core/map/location_helper.dart';
import '../../../../../../../core/networking/api_error_model.dart';
import '../../data/models/home_request_body_model.dart';
import '../../data/models/home_response_model.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  String homeAddress = '';
  double? lat;
  double? lng;

  void changeAddress(BuildContext context) async {
    emit(const HomeState.getCurrentLocation());
    Position? position = await LocationHelper.determinePosition();
    final Placemark = await placemarkFromCoordinates(
      position!.latitude,
      position.longitude,
    );
    homeAddress = Placemark[0].street ?? "";
    lat = position.latitude;
    lng = position.longitude;

    context.read<MapCubit>()
      ..lat = lat
      ..lng = lng
      ..changeAddress(newAddress: homeAddress);
  }

  late HomeData homeData;
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
          homeData = homeResponse.data!;
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
