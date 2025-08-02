import 'package:flutter_bloc/flutter_bloc.dart';
import 'types_state.dart';

class TypesCubit extends Cubit<TypesState> {
  TypesCubit() : super(const TypesState.initial());

  int typesIndex = 0;
  void changeType(int index) {
    typesIndex = index;
    emit(TypesState.typesIndex(index));
  }
}
