import 'package:flutter/material.dart';
import '../../../../../../core/widgets/custom_app_bar.dart';
import 'widgets/custom_home_sections.dart';
import 'widgets/home_swiper.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          HomeSwiper(),
          CustomHomeSections(),
          Column(children: []),
        ],
      ),
    );
  }
}
