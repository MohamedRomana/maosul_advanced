import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/helper/extentions.dart';
import 'package:maosul_advanced/core/widgets/app_button.dart';
import 'package:maosul_advanced/core/widgets/app_text.dart';
import 'package:maosul_advanced/features/auth/forget_pass/logic/forget_pass_cubit.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/widgets/flash_message.dart';
import '../../../../../generated/locale_keys.g.dart';
import '../../logic/forget_pass_state.dart';

class ForgetPassButtons extends StatelessWidget {
  const ForgetPassButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPassCubit, ForgetPassState>(
      listenWhen: (previous, current) =>
          current is ForgetPassSuccess ||
          current is ForgetPassError ||
          current is ForgetPassLoading,
      listener: (context, state) {
        state.whenOrNull(
          forgetPassSuccess: (forgetPassResponse) {
            showFlashMessage(
              message: forgetPassResponse.msg ?? '',
              type: FlashMessageType.success,
              context: context,
            );
            context.pushNamed(
              Routes.resetPass,
              arguments: forgetPassResponse.userId,
            );
          },
          forgetPassError: (error) {
            showFlashMessage(
              message: error.message ?? '',
              type: FlashMessageType.error,
              context: context,
            );
          },
        );
      },
      builder: (context, state) {
        return AppButton(
          top: 30.h,
          onPressed: () {
            context.read<ForgetPassCubit>().forgetPass();
          },
          child: const ForgetPassState.forgetPassLoading() == state
              ? const CircularProgressIndicator(color: Colors.white)
              : AppText(
                  text: LocaleKeys.send.tr(),
                  size: 16.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
        );
      },
    );
  }
}
