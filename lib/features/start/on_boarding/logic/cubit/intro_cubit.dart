import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maosul_advanced/core/cache/cache_helper.dart';
import 'package:maosul_advanced/core/networking/api_result.dart';
import 'package:maosul_advanced/features/start/on_boarding/data/repos/intro_repo.dart';
import '../../../../../core/networking/api_error_model.dart';
import '../../data/models/intro_body_model.dart';
import 'intro_state.dart';

class IntroCubit extends Cubit<IntroState> {
  final IntroRepo _introRepo;
  IntroCubit(this._introRepo) : super(const IntroState.initial());

  List introList = [];
  void getIntro() async {
    emit(const IntroState.introLoading());
    final response = await _introRepo.getIntro(
      IntroBodyModel(lang: CacheHelper.getLang()),
    );
    response.when(
      success: (introResponse) {
        if (introResponse.key == 1) {
          introList = [
            {
              "image" : introResponse.data!.firstImage,
              "title" : introResponse.data!.firstTitle,
              "desc" : introResponse.data!.firstDesc,
            },
            {
              "image" : introResponse.data!.secondImage,
              "title" : introResponse.data!.secondTitle,
              "desc" : introResponse.data!.secondDesc,
            },
            {
              "image" : introResponse.data!.thirdImage,
              "title" : introResponse.data!.thirdTitle,
              "desc" : introResponse.data!.thirdDesc,
            },
          ];
          emit(IntroState.introSuccess(introResponse));
        } else {
          emit(
            IntroState.introError(
              ApiErrorModel(message: introResponse.msg, key: introResponse.key),
            ),
          );
        }
      },
      error: (error) {
        emit(IntroState.introError(error));
      },
    );
  }
}
