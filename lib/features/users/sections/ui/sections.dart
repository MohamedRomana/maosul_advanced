import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/constants/colors.dart';
import 'package:maosul_advanced/core/widgets/app_cached.dart';
import 'package:maosul_advanced/core/widgets/app_text.dart';
import 'package:maosul_advanced/core/widgets/custom_app_bar.dart';
import 'package:maosul_advanced/core/widgets/custom_bottom_nav.dart';
import 'package:maosul_advanced/features/users/sections/logic/cubit/sections_cubit.dart';
import '../logic/cubit/sections_state.dart';
import 'widgets/sections_gride_shimmer.dart';

class Sections extends StatelessWidget {
  const Sections({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SectionsCubit, SectionsState>(
      builder: (context, state) {
        final cubit = context.read<SectionsCubit>();
        return Scaffold(
          bottomNavigationBar: const CustomBottomNav(),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(130.h),
            child: const CustomAppBar(title: 'الاقسام'),
          ),
          body: const SectionsState.sectionsLoading() == state
              ? const SectionsGrideShimmer()
              : GridView.builder(
                  padding: EdgeInsetsDirectional.only(
                    start: 16.w,
                    end: 16.w,
                    bottom: 40.h,
                  ),
                  itemCount: cubit.sections.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 10.h,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.all(16.r),
                    width: 110.w,
                    decoration: BoxDecoration(
                      color: AppColors.primaryMedium,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Column(
                      children: [
                        AppCachedImage(
                          image: cubit.sections[index].image ?? '',
                          height: 42.w,
                          width: 42.w,
                          fit: BoxFit.cover,
                        ),
                        AppText(
                          text: cubit.sections[index].title ?? '',
                          size: 12.sp,
                          fontWeight: FontWeight.w600,
                          top: 5.h,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
        );
      },
    );
  }
}
