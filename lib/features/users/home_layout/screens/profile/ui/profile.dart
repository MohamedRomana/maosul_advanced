import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/constants/colors.dart';
import '../../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../../core/widgets/custom_drawer.dart';
import '../../../../../../generated/locale_keys.g.dart';
import '../../../../store_name/ui/store_name.dart';
import 'widgets/about_profile_container.dart';
import 'widgets/custom_top_profile.dart';
import 'widgets/favourites_container.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(color: AppColors.primaryMedium),
      ),
      controller: advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: true,
      openScale: 0.8,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      drawer: const CustomDrawer(),

      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.h),
          child: CustomAppBar(
            title: LocaleKeys.myaccount.tr(),
            isStore: true,
            isHome: false,
            widget: const CustomTopProfile(),
          ),
        ),
        body: const Column(
          children: [AboutProfileContainer(), FavouritesContainer()],
        ),
      ),
    );
  }
}
