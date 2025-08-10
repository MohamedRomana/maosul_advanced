import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/app_text.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_drawer.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../store_name/ui/store_name.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

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
          preferredSize: Size.fromHeight(125.h),
          child: CustomAppBar(
            title: LocaleKeys.notifications.tr(),
            isHome: false,
          ),
        ),
        body: ListView.separated(
          padding: EdgeInsetsDirectional.only(
            bottom: 40.h,
            start: 16.w,
            end: 16.w,
          ),
          itemCount: 20,
          separatorBuilder: (context, index) => SizedBox(height: 16.h),
          itemBuilder: (context, index) => Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5.r),
                  blurRadius: 5.r,
                  spreadRadius: 1.r,
                  offset: Offset(0, 5.r),
                ),
              ],
            ),
            child: Slidable(
              key: const ValueKey(0),
              endActionPane: ActionPane(
                motion: const StretchMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) {
                      // AppCubit.get(context).deleteNotification(
                      //   notificationId: AppCubit.get(
                      //     context,
                      //   ).notificationsModel[index].id.toString(),
                      //   index: index,
                      // );
                    },
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    icon: Icons.done,
                    label: 'مسح',
                  ),
                ],
              ),
              child: Container(
                width: 343.w,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                decoration: BoxDecoration(
                  color: const Color(0xffFCFCFC),
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primaryLight,
                      blurRadius: 5.r,
                      spreadRadius: 1.r,
                      offset: Offset(0, 5.r),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          height: 36.w,
                          width: 36.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: const Color(0xff3FAD46),
                          ),
                          child: Icon(
                            Icons.check_circle_outline_rounded,
                            color: Colors.white,
                            size: 25.sp,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              bottom: 9.h,
                              text: 'في الطريق',
                              color: const Color(0xff3FAD46),
                              size: 14.sp,
                            ),
                            SizedBox(
                              height: 35.h,
                              width: 160.w,
                              child: AppText(
                                text: 'تم الموافقة على طلبك',
                                lines: 2,
                                size: 12.sp,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 70.w,
                      child: AppText(
                        text: 'منذ 3 دقائق',
                        color: Colors.black,
                        size: 12.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
