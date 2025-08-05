import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../../core/networking/api_error_model.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.getCurrentLocation() = GetCurrentLocation;
  const factory HomeState.homeLoading() = HomeLoading;
  const factory HomeState.homeSuccess(T data) =
      HomeSuccess;
  const factory HomeState.homeError(ApiErrorModel apiErrorModel) = HomeError;
}
