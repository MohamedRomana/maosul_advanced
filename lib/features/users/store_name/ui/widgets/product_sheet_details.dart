import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/widgets/app_cached.dart';
import '../../../../../core/widgets/app_text.dart';

class ProductSheetDetails extends StatelessWidget {
  const ProductSheetDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(1000.r),
              child: AppCachedImage(
                image:
                    'https://abdo.efadh.net/maosul/public/images/users/03-11-211635947376615234596.png',
                height: 80.w,
                width: 80.w,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: 10.w),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 150.w,
                      child: AppText(
                        text: 'اسم المنتج',
                        color: Colors.black,
                        size: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.favorite_border,
                          color: AppColors.primary,
                        ),
                        SizedBox(width: 10.w),
                        Container(
                          height: 22.h,
                          width: 50.w,
                          padding: EdgeInsetsDirectional.symmetric(
                            horizontal: 2.w,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: AppColors.primary,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 15.sp,
                              ),
                              SizedBox(
                                width: 30.w,
                                child: AppText(
                                  textAlign: TextAlign.center,
                                  text: '4.5',
                                  size: 12.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  width: 230.w,
                  child: AppText(
                    textAlign: TextAlign.start,
                    text:
                        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على',
                    lines: 2,
                    color: Colors.grey,
                    size: 10.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: const Divider(color: AppColors.primary),
        ),
      ],
    );
  }
}
