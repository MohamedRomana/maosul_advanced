import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/cache/cache_helper.dart';
import 'package:maosul_advanced/core/widgets/app_router.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_text.dart';
import '../../../../../generated/locale_keys.g.dart';
import '../../../languages/logic/lang_cubit.dart';
import '../../../languages/ui/languages_view.dart';

class IntroButtons extends StatelessWidget {
  final int index;
  const IntroButtons({
    super.key,
    required this.pageController,
    required this.index,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        index == 2
            ? AppButton(
                onPressed: () {
                  CacheHelper.setShowIntro(true);
                  AppRouter.navigateAndFinish(
                    context,
                    BlocProvider(
                      create: (context) => LangCubit(),
                      child: const LanguagesView(),
                    ),
                  );
                },
                child: AppText(
                  text: LocaleKeys.start_now.tr(),
                  size: 16.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              )
            : Visibility(
                visible: index != 2,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.fastOutSlowIn,
                        );
                      },
                      child: Container(
                        margin: EdgeInsetsDirectional.only(start: 16.w),
                        height: 60.w,
                        width: 60.w,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: Center(
                          child: AppText(
                            text: LocaleKeys.next.tr(),
                            size: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Visibility(
                      visible: index != 2,
                      child: GestureDetector(
                        onTap: () {
                          pageController.animateToPage(
                            2,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.fastOutSlowIn,
                          );
                        },
                        child: SizedBox(
                          width: 100.w,
                          child: AppText(
                            textAlign: TextAlign.end,
                            end: 16.w,
                            text: LocaleKeys.skip.tr(),
                            size: 14.sp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ],
    );
  }
}
