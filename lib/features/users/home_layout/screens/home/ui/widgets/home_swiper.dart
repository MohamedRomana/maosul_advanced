import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/constants/colors.dart';
import '../../../../../../../gen/assets.gen.dart';

class HomeSwiper extends StatelessWidget {
  const HomeSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: 343.w,
      margin: EdgeInsets.only(bottom: 20.h),
      decoration: BoxDecoration(
        color: AppColors.primaryLight,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryMedium,
            blurRadius: 5.r,
            spreadRadius: 1.r,
            offset: Offset(0, 5.r),
          ),
        ],
      ),
      child: Swiper(
        itemCount: 4,
        autoplay: true,
        pagination: const SwiperPagination(
          alignment: Alignment.bottomCenter,
          builder: DotSwiperPaginationBuilder(
            color: AppColors.primaryMedium,
            activeColor: AppColors.primaryLight,
            size: 8,
            activeSize: 8,
          ),
        ),
        itemBuilder: (context, index) => Container(
          height: 150.h,
          width: 343.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            image: DecorationImage(
              image: AssetImage(Assets.img.maskGroup14.path),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
