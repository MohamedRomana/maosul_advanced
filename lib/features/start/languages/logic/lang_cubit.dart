import 'package:flutter_bloc/flutter_bloc.dart';
import 'lang_state.dart';

class LangCubit extends Cubit<LangState> {
  LangCubit() : super(const LangState.initial());

  int langIndex = 0;
  void changeLang(int index) {
    langIndex = index;
    emit(LangState.langIndex(index));
  }
}
