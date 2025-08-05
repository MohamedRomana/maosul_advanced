import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/widgets/app_text.dart';
import '../../../../../../../gen/assets.gen.dart';

class HomeNearYou extends StatelessWidget {
  const HomeNearYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          start: 16.w,
          bottom: 12.h,
          text: 'أماكن قريبة منك',
          size: 18.sp,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(
          height: 120.h,
          child: ListView.separated(
            itemCount: 20,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            separatorBuilder: (context, index) => SizedBox(width: 10.w),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Stack(
              children: [
                Container(
                  height: 120.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    image: DecorationImage(
                      image: AssetImage(Assets.img.market.path),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 120.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: const Color(0xff1C6544).withAlpha(100),
                  ),
                ),
                PositionedDirectional(
                  bottom: 10.h,
                  start: 3.w,
                  end: 3.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100.w,
                            child: AppText(
                              text: 'اسم المتجر',
                              size: 12.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              AppText(
                                text: '4.9',
                                size: 11.sp,
                                color: const Color(0xffFC6011),
                                end: 3.w,
                                fontWeight: FontWeight.w700,
                              ),
                              Icon(
                                Icons.star,
                                size: 20.sp,
                                color: const Color(0xffFC6011),
                              ),
                            ],
                          ),
                        ],
                      ),
                      AppText(
                        text: 'حي الصحافة - ش الملك سعود',
                        size: 10.sp,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
