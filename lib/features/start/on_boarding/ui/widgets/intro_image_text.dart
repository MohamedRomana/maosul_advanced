import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/widgets/app_cached.dart';
import '../../../../../core/widgets/app_text.dart';
import '../../logic/cubit/intro_cubit.dart';
import '../../logic/cubit/intro_state.dart';

class IntroImageText extends StatelessWidget {
  final int index;
  const IntroImageText({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IntroCubit, IntroState>(
      builder: (context, state) {
        final cubit = context.read<IntroCubit>();
        return Column(
          children: [
            AppCachedImage(
              image: cubit.introList[index]['image'] ?? "",
              height: 286.h,
              width: 342.w,
              fit: BoxFit.fill,
            ),
            AppText(
              text: cubit.introList[index]['title'] ?? '',
              size: 24.sp,
              fontWeight: FontWeight.w700,
              top: 4.h,
              bottom: 17.h,
            ),
            AppText(
              text: cubit.introList[index]['desc'] ?? '',
              color: Colors.black,
              lines: 3,
              textAlign: TextAlign.center,
              bottom: 24.h,
            ),
          ],
        );
      },
    );
  }
}
