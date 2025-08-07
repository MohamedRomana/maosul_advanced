import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/networking/api_error_model.dart';
part 'show_product_state.freezed.dart';

@freezed
class ShowProductState<T> with _$ShowProductState<T> {
  const factory ShowProductState.initial() = _Initial;
  const factory ShowProductState.showProductLoading() = ShowProductLoading;
  const factory ShowProductState.showProductSuccess(T data) = ShowProductSuccess;
  const factory ShowProductState.showProductError(ApiErrorModel error) = ShowProductError;
}
