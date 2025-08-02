import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/features/start/languages/logic/lang_cubit.dart';
import 'package:maosul_advanced/features/start/types/logic/types_cubit.dart';
import 'package:maosul_advanced/features/start/types/types_view.dart';
import '../../../../../core/cache/cache_helper.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_router.dart';
import '../../../../../core/widgets/app_text.dart';
import '../../../../../generated/locale_keys.g.dart';
import '../../logic/lang_state.dart';

class ChooseLang extends StatelessWidget {
  const ChooseLang({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LangCubit>();
    return BlocBuilder<LangCubit, LangState>(
      builder: (context, state) {
        return Column(
          children: [
            Container(
              height: 48.h,
              width: 311.w,
              margin: EdgeInsets.only(
                top: 40.h,
                bottom: 30.h,
                right: 16.w,
                left: 16.w,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      cubit.changeLang(0);
                    },
                    child: Container(
                      height: 48.h,
                      width: 155.w,
                      decoration: BoxDecoration(
                        color: cubit.langIndex == 0
                            ? AppColors.primary
                            : Colors.white,
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: Center(
                        child: AppText(
                          text: LocaleKeys.ar.tr(),
                          color: cubit.langIndex == 0
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      cubit.changeLang(1);
                    },
                    child: Container(
                      height: 48.h,
                      width: 155.w,
                      decoration: BoxDecoration(
                        color: cubit.langIndex == 1
                            ? AppColors.primary
                            : Colors.white,
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: Center(
                        child: AppText(
                          text: LocaleKeys.en.tr(),
                          color: cubit.langIndex == 1
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AppButton(
              onPressed: () {
                if (cubit.langIndex == 0) {
                  CacheHelper.setLang("ar");
                  context.setLocale(const Locale('ar'));
                } else {
                  CacheHelper.setLang("en");
                  context.setLocale(const Locale('en'));
                }
                AppRouter.navigateTo(
                  context,
                  BlocProvider(
                    create: (context) => TypesCubit(),
                    child: const TypesView(),
                  ),
                );
              },
              child: AppText(
                text: LocaleKeys.save.tr(),
                color: Colors.white,
                size: 16.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        );
      },
    );
  }
}
