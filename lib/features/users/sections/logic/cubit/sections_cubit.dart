import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maosul_advanced/core/cache/cache_helper.dart';
import 'package:maosul_advanced/core/networking/api_result.dart';
import 'package:maosul_advanced/features/users/sections/data/models/sections_response_model.dart';
import 'package:maosul_advanced/features/users/sections/data/repos/sections_repo.dart';
import '../../../../../core/networking/api_error_model.dart';
import '../../data/models/sectios_body_model.dart';
import 'sections_state.dart';

class SectionsCubit extends Cubit<SectionsState> {
  final SectionsRepo _sectionsRepo;
  SectionsCubit(this._sectionsRepo) : super(const SectionsState.initial());

  List<Section> sections = [];
  void getSections() async {
    emit(const SectionsState.sectionsLoading());
    final response = await _sectionsRepo.getSections(
      SectionsBodyModel(
        lang: CacheHelper.getLang(),
        userId: CacheHelper.getUserId(),
      ),
    );
    response.when(
      success: (sectionsResponse) {
        if (sectionsResponse.key == 1) {
          sections = sectionsResponse.data?.sections ?? [];
          debugPrint(sections.length.toString());
          emit(SectionsState.sectionsSuccess(sectionsResponse));
        } else {
          emit(
            SectionsState.sectionsError(
              ApiErrorModel(
                message: sectionsResponse.msg,
                key: sectionsResponse.key,
              ),
            ),
          );
        }
      },
      error: (error) => emit(SectionsState.sectionsError(error)),
    );
  }
}
