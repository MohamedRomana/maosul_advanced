import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maosul_advanced/core/networking/api_error_model.dart';
part 'store_name_state.freezed.dart';

@freezed
class StoreNameState<T> with _$StoreNameState<T> {
  const factory StoreNameState.initial() = _Initial;
  const factory StoreNameState.storeNameLoading() = StoreNameLoading;
  const factory StoreNameState.storeNameSuccess(T data) = StoreNameSuccess;
  const factory StoreNameState.storeNameError(ApiErrorModel apiErrorModel) = StoreNameError;
}
