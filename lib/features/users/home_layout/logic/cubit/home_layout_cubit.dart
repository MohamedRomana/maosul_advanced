import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maosul_advanced/features/users/home_layout/screens/cart/ui/cart.dart';
import 'package:maosul_advanced/features/users/home_layout/screens/home/ui/home.dart';
import 'package:maosul_advanced/features/users/home_layout/screens/orders/ui/orders.dart';
import 'package:maosul_advanced/features/users/home_layout/screens/profile/ui/profile.dart';
import 'package:maosul_advanced/features/users/home_layout/screens/stores/ui/stores.dart';
import 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(const HomeLayoutState.initial());

  int bottomNavIndex = 2;
  List<Widget> bottomNavScreens = [
    const Stores(),
    const Cart(),
    const Home(),
    const Orders(),
    const Profile(),
  ];

  void changeBottomNavIndex(index) async {
    bottomNavIndex = index;
    emit(HomeLayoutState.changeBottomNavIndex(index));
  }
}
