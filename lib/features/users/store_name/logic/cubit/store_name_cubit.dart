import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maosul_advanced/core/cache/cache_helper.dart';
import 'package:maosul_advanced/core/networking/api_result.dart';
import '../../../../../core/networking/api_error_model.dart';
import '../../data/models/store_name_body_model.dart';
import '../../data/models/store_name_response_model.dart';
import '../../data/repos/store_name_repo.dart';
import 'store_name_state.dart';

class StoreNameCubit extends Cubit<StoreNameState> {
  final StoreNameRepo _storeNameRepo;
  StoreNameCubit(this._storeNameRepo) : super(const StoreNameState.initial());

  StoreData? storeData;
  List<SubSection> subSections = [];
  List<Service> services = [];
  void getStoreName({required String providerId}) async {
    emit(const StoreNameState.storeNameLoading());
    final response = await _storeNameRepo.getStoreName(
      StoreNameBodyModel(
        lang: CacheHelper.getLang(),
        lat: CacheHelper.getLat().toString(),
        lng: CacheHelper.getLng().toString(),
        userId: CacheHelper.getUserId(),
        providerId: providerId,
      ),
    );
    response.when(
      success: (storeNameResponse) {
        if (storeNameResponse.key == 1) {
          storeData = storeNameResponse.data;
          services = storeNameResponse.data?.services ?? [];

          if (storeNameResponse.data?.subSections?.length == 1) {
            subSections = storeNameResponse.data?.subSections ?? [];
          } else {
            subSections = [SubSection(id: 0, title: "الكل")];
            subSections.addAll(storeNameResponse.data?.subSections ?? []);
          }
          emit(StoreNameState.storeNameSuccess(storeNameResponse));
        } else {
          emit(
            StoreNameState.storeNameError(
              ApiErrorModel(
                message: storeNameResponse.msg,
                key: storeNameResponse.key,
              ),
            ),
          );
        }
      },
      error: (error) {
        emit(StoreNameState.storeNameError(error));
      },
    );
  }
}
