import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/networking/api_error_model.dart';
part 'add_to_cart_state.freezed.dart';

@freezed
class AddToCartState<T> with _$AddToCartState<T> {
  const factory AddToCartState.initial() = _Initial;
  const factory AddToCartState.changeCount(int count) = ChangeCount;
  const factory AddToCartState.addToCartLoading() = AddToCartLoading;
  const factory AddToCartState.addToCartSuccess(T data) = AddToCartSuccess;
  const factory AddToCartState.addToCartError(ApiErrorModel error) = AddToCartError;
}
