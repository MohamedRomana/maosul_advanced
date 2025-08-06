import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/networking/api_error_model.dart';
part 'stores_state.freezed.dart';

@freezed
class StoresState<T> with _$StoresState<T> {
  const factory StoresState.initial() = _Initial;
  const factory StoresState.storesLoading() = StoresLoading;
  const factory StoresState.storesSuccess(T data) = StoresSuccess<T>;
  const factory StoresState.storesError(ApiErrorModel apiErrorModel) = StoresError;
}
