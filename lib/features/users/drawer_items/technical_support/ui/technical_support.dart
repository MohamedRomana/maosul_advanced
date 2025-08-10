import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tawkto/flutter_tawk.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../core/widgets/custom_bottom_nav.dart';
import '../../../../../core/widgets/custom_drawer.dart';
import '../../../../../generated/locale_keys.g.dart';
import '../../../store_name/ui/store_name.dart';

class TechnicalSupport extends StatelessWidget {
  const TechnicalSupport({super.key});

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
        bottomNavigationBar: const CustomBottomNav(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(125.h),
          child: CustomAppBar(
            title: LocaleKeys.technicalsupport.tr(),
            isHome: false,
          ),
        ),
        body: Tawk(
          directChatLink:
              'https://tawk.to/chat/61ac84c880b2296cfdd01712/1fm4udcia',
          visitor: TawkVisitor(name: "Mohamed", email: "mohamed@maosul.com"),
          onLoad: () {
            debugPrint('Hello Tawk!');
          },
          onLinkTap: (String url) {
            debugPrint(url);
          },
          placeholder: Padding(
            padding: EdgeInsets.all(16.w),
            child: Shimmer.fromColors(
              baseColor: AppColors.primary,
              highlightColor: Colors.grey,
              child: Container(
                height: 500.h,
                width: 343.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.w),
                  color: AppColors.primary.withOpacity(.1),
                ),
                child: const Center(
                  child: CircularProgressIndicator(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
