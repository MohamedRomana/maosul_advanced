import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../../core/networking/api_error_model.dart';
part 'store_order_state.freezed.dart';

@freezed
class StoreOrderState<T> with _$StoreOrderState<T> {
  const factory StoreOrderState.initial() = _Initial;
  const factory StoreOrderState.changePaymentMethod(int index) = ChangePaymentMethod;
  const factory StoreOrderState.changeDeliveryMethod(int index) = ChangeDeliveryMethod;
  const factory StoreOrderState.storeOrderLoading() = StoreOrderLoading;
  const factory StoreOrderState.storeOrderSuccess(T data) = StoreOrderSuccess;
  const factory StoreOrderState.storeOrderError(ApiErrorModel error) = StoreOrderError;
}
