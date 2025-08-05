import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/networking/api_error_model.dart';
part 'sections_state.freezed.dart';

@freezed
class SectionsState<T> with _$SectionsState<T> {
  const factory SectionsState.initial() = _Initial;
  const factory SectionsState.sectionsLoading() = SectionsLoading;
  const factory SectionsState.sectionsSuccess(T data) = SectionsSuccess;
  const factory SectionsState.sectionsError(ApiErrorModel apiErrorModel) =
      SectionsError;
}
