import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maosul_advanced/core/cache/cache_helper.dart';
import 'package:maosul_advanced/core/networking/api_result.dart';
import 'package:maosul_advanced/features/users/home_layout/screens/cart/data/models/cart_response_model.dart';
import 'package:maosul_advanced/features/users/home_layout/screens/cart/data/repos/cart_repo.dart';
import '../../../../../../../core/networking/api_error_model.dart';
import '../../data/models/cart_body_model.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final CartRepo _cartRepo;
  CartCubit(this._cartRepo) : super(const CartState.initial());
  int count = 1;
  void incrementCountAt(int index) {
    final item = cartItems?[index];
    if (item != null) {
      item.count = (item.count ?? 1) + 1;
      emit(CartState.changeCount(item.count!));
    }
  }

  void decrementCountAt(int index) {
    final item = cartItems?[index];
    if (item != null && (item.count ?? 1) > 1) {
      item.count = item.count! - 1;
      emit(CartState.changeCount(item.count!));
    }
  }

  List<CartItem?>? cartItems;
  void getCart() async {
    emit(const CartState.cartLoading());
    final response = await _cartRepo.getCart(
      CartBodyModel(
        lang: CacheHelper.getLang(),
        userId: CacheHelper.getUserId(),
      ),
    );
    response.when(
      success: (cartResponse) {
        if (cartResponse.key == 1) {
          cartItems = cartResponse.data ?? [];
          emit(CartState.cartSuccess(cartResponse));
        } else {
          emit(
            CartState.cartError(
              ApiErrorModel(message: cartResponse.msg, key: cartResponse.key),
            ),
          );
        }
      },
      error: (error) {
        emit(CartState.cartError(error));
      },
    );
  }
}
