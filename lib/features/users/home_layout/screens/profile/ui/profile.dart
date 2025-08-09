import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../../generated/locale_keys.g.dart';
import 'widgets/about_profile_container.dart';
import 'widgets/custom_top_profile.dart';
import 'widgets/favourites_container.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
