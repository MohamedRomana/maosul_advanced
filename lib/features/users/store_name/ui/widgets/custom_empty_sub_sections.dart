import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/widgets/app_text.dart';
import '../../../../../core/widgets/custom_lottie_widget.dart';
import '../../../../../gen/assets.gen.dart';

class CustomEmptySubSections extends StatelessWidget {
  const CustomEmptySubSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomLottieWidget(lottieName: Assets.img.emptyorder),
        AppText(
          text: 'لا يوجد منتجات',
          size: 16.sp,
          fontWeight: FontWeight.w700,
          color: AppColors.primary,
        ),
      ],
    );
  }
}