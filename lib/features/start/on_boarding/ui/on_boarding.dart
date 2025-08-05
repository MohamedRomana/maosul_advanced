// ignore_for_file: deprecated_member_use

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/constants/colors.dart';
import 'package:maosul_advanced/features/start/on_boarding/logic/cubit/intro_cubit.dart';
import '../logic/cubit/intro_state.dart';
import 'widgets/intro_buttons.dart';
import 'widgets/intro_image_text.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  double currentIndex = 0.0;
  PageController pageController = PageController();
  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {
          currentIndex = pageController.page!;
        });
      });

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IntroCubit, IntroState>(
      builder: (context, state) {
        final cubit = context.read<IntroCubit>();
        return Scaffold(
          backgroundColor: AppColors.primaryMedium,
          body: SafeArea(
            child: const IntroState.introLoading() == state
                ? const Center(
                    child: CircularProgressIndicator(color: AppColors.primary),
                  )
                : Stack(
                    children: [
                      PageView.builder(
                        controller: pageController,
                        itemCount: cubit.introList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsetsDirectional.only(
                              start: 16.w,
                              end: 16.w,
                              top: 128.h,
                              bottom: 32.h,
                            ),
                            child: Column(
                              children: [
                                IntroImageText(index: index),
                                const Spacer(),
                                IntroButtons(
                                  pageController: pageController,
                                  index: index,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      PositionedDirectional(
                        bottom: 210.h,
                        start: 16.w,
                        end: 16.w,
                        child: DotsIndicator(
                          dotsCount: cubit.introList.length,
                          position: currentIndex,
                          decorator: DotsDecorator(
                            activeColor: AppColors.primary,
                            color: const Color(0xff878787).withOpacity(0.3),
                            size: Size.square(12.r),
                            activeSize: Size(20.w, 12.h),
                            activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
