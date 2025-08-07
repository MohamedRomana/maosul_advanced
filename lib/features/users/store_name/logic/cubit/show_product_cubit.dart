import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maosul_advanced/core/cache/cache_helper.dart';
import 'package:maosul_advanced/core/networking/api_result.dart';
import '../../data/models/show_product_body_model.dart';
import '../../data/models/show_product_response_model.dart';
import '../../data/repos/show_product_repo.dart';
import 'show_product_state.dart';

class ShowProductCubit extends Cubit<ShowProductState> {
  final ShowProductRepo _showProductRepo;
  ShowProductCubit(this._showProductRepo)
    : super(const ShowProductState.initial());

  ProductData? productData;
  void getShowProduct({required String serviceId}) async {
    emit(const ShowProductState.showProductLoading());
    final response = await _showProductRepo.getShowProduct(
      ShowProductBodyModel(
        lang: CacheHelper.getLang(),
        userId: CacheHelper.getUserId(),
        serviceId: serviceId,
      ),
    );
    response.when(
      success: (showProductResponse) {
        productData = showProductResponse.data;
        emit(ShowProductState.showProductSuccess(showProductResponse));
      },
      error: (apiError) {
        emit(ShowProductState.showProductError(apiError));
      },
    );
  }
}
