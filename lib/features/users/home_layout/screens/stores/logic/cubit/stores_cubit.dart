import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maosul_advanced/core/networking/api_result.dart';
import 'package:maosul_advanced/features/users/home_layout/screens/stores/data/models/stores_response_model.dart';
import '../../../../../../../core/cache/cache_helper.dart';
import '../../../../../../../core/networking/api_error_model.dart';
import '../../data/models/stores_body_model.dart';
import '../../data/repos/stores_repo.dart';
import 'stores_state.dart';

class StoresCubit extends Cubit<StoresState> {
  final StoresRepo _storesRepo;
  StoresCubit(this._storesRepo) : super(const StoresState.initial());

  List<StoreData> storesData = [];

  void getStores() async {
    emit(const StoresState.storesLoading());
    final response = await _storesRepo.getStores(
      StoresBodyModel(
        lat: CacheHelper.getLat().toString(),
        lng: CacheHelper.getLng().toString(),
        lang: CacheHelper.getLang(),
        userId: CacheHelper.getUserId(),
      ),
    );

    response.when(
      success: (storesResponse) {
        if (storesResponse.key == 1) {
          storesData = storesResponse.data ?? [];
          emit(StoresState.storesSuccess(storesResponse));
        } else {
          emit(
            StoresState.storesError(
              ApiErrorModel(
                message: storesResponse.msg,
                key: storesResponse.key,
              ),
            ),
          );
        }
      },
      error: (error) => emit(StoresState.storesError(error)),
    );
  }
}
