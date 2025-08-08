import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/di/dependancy_injection.dart';
import '../../screens/cart/logic/cubit/cart_cubit.dart';
import '../../screens/cart/logic/cubit/store_order_cubit.dart';
import '../../screens/cart/ui/cart.dart';
import '../../screens/home/logic/cubit/home_cubit.dart';
import '../../screens/home/ui/home.dart';
import '../../screens/orders/ui/orders.dart';
import '../../screens/profile/ui/profile.dart';
import '../../screens/stores/ui/stores.dart';
import 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(const HomeLayoutState.initial());

  int bottomNavIndex = 2;
  List<Widget> bottomNavScreens = [
    const Stores(),
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CartCubit(getIt())..getCart(),
        ),
        BlocProvider(
          create: (context) => StoreOrderCubit(getIt())..storeOrder(),
        ),
      ],
      child: const Cart(),
    ),
    BlocProvider(
      create: (context) => HomeCubit(getIt())..getHome(),
      child: const Home(),
    ),
    const Orders(),
    const Profile(),
  ];

  void changeBottomNavIndex(index) async {
    bottomNavIndex = index;
    emit(HomeLayoutState.changeBottomNavIndex(index));
  }
}
