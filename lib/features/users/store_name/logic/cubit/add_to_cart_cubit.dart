import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maosul_advanced/core/cache/cache_helper.dart';
import 'package:maosul_advanced/core/networking/api_result.dart';
import '../../data/models/add_to_cart_body_model.dart';
import '../../data/repos/add_to_cart_repo.dart';
import 'add_to_cart_state.dart';

class AddToCartCubit extends Cubit<AddToCartState> {
  final AddToCartRepo _addToCartRepo;
  AddToCartCubit(this._addToCartRepo) : super(const AddToCartState.initial());

  TextEditingController noteController = TextEditingController();
  int count = 1;

  void incrementCount() {
    count++;
    emit(AddToCartState.changeCount(count));
  }

  void decrementCount() {
    if (count > 1) {
      count--;
      emit(AddToCartState.changeCount(count));
    }
  }

  void addToCart({required String serviceId, required String count}) async {
    emit(const AddToCartState.addToCartLoading());
    final response = await _addToCartRepo.addToCart(
      AddToCartBodyModel(
        serviceId: serviceId,
        count: count,
        lang: CacheHelper.getLang(),
        userId: CacheHelper.getUserId(),
        notes: noteController.text,
      ),
    );
    response.when(
      success: (addToCartResponse) {
        emit(AddToCartState.addToCartSuccess(addToCartResponse));
      },
      error: (apiError) {
        emit(AddToCartState.addToCartError(apiError));
      },
    );
  }
}
