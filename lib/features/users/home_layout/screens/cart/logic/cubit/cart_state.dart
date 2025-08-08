import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maosul_advanced/core/networking/api_error_model.dart';
part 'cart_state.freezed.dart';

@freezed
class CartState<T> with _$CartState<T> {
  const factory CartState.initial() = _Initial;
  const factory CartState.changeCount(int count) = ChangeCount;
  const factory CartState.cartLoading() = CartLoading;
  const factory CartState.cartSuccess(T data) = CartSuccess;
  const factory CartState.cartError(ApiErrorModel apiErrorModel) = CartError;
}
