import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maosul_advanced/core/cache/cache_helper.dart';
import 'package:maosul_advanced/core/networking/api_result.dart';
import '../../../../../../../core/networking/api_error_model.dart';
import '../../data/models/store_order_body_model.dart';
import '../../data/models/store_order_response_model.dart';
import '../../data/repos/store_order_repo.dart';
import 'store_order_state.dart';

class StoreOrderCubit extends Cubit<StoreOrderState> {
  final StoreOrderRepo _storeOrderRepo;
  StoreOrderCubit(this._storeOrderRepo)
    : super(const StoreOrderState.initial());

  TextEditingController noteController = TextEditingController();
  int paymentIndex = -1;

  void changePaymentIndex(int index) {
    paymentIndex = index;
    emit(StoreOrderState.changePaymentMethod(index));
  }

  int deliveryIndex = -1;

  void changeDeliveryIndex(int index) {
    deliveryIndex = index;
    emit(StoreOrderState.changeDeliveryMethod(index));
  }

  double lat = 0.0;
  double lng = 0.0;
  String address = '';
  OrderData? orderData;
  void storeOrder() async {
    emit(const StoreOrderState.storeOrderLoading());
    final response = await _storeOrderRepo.storeOrder(
      StoreOrderBodyModel(
        lang: CacheHelper.getLang(),
        userId: CacheHelper.getUserId(),
        paymentMethod: paymentIndex == 0 ? "cash" : "online",
        title: noteController.text,
        address: deliveryIndex == 0 ? CacheHelper.getAddress() : address,
        lat: deliveryIndex == 0
            ? CacheHelper.getLat().toString()
            : lat.toString(),
        lng: deliveryIndex == 1
            ? CacheHelper.getLng().toString()
            : lng.toString(),
      ),
    );
    response.when(
      success: (storeOrderResponse) {
        if (storeOrderResponse.key == 1) {
          orderData = storeOrderResponse.data;
          emit(StoreOrderState.storeOrderSuccess(storeOrderResponse));
        } else {
          emit(
            StoreOrderState.storeOrderError(
              ApiErrorModel(
                message: storeOrderResponse.msg,
                key: storeOrderResponse.key,
              ),
            ),
          );
        }
      },
      error: (error) {
        emit(StoreOrderState.storeOrderError(error));
      },
    );
  }
}
