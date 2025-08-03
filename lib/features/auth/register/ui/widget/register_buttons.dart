import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/widgets/flash_message.dart';
import 'package:maosul_advanced/features/auth/register/logic/register_cubit.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_router.dart';
import '../../../../../core/widgets/app_text.dart';
import '../../../../../generated/locale_keys.g.dart';
import '../../../otp/ui/otp.dart';
import '../../logic/register_state.dart';

class RegisterButtons extends StatelessWidget {
  const RegisterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocListener<RegisterCubit, RegisterState>(
          listenWhen: (previous, current) =>
              current is RegisterSuccess ||
              current is RegisterError ||
              current is RegisterLoading,
          listener: (context, state) {
            state.whenOrNull(
              registerLoading: () => showDialog(
                context: context,
                builder: (context) => const Center(
                  child: CircularProgressIndicator(color: AppColors.primary),
                ),
              ),
              registerSuccess: (data) {
                showFlashMessage(
                  message: data.msg ?? '',
                  type: FlashMessageType.success,
                  context: context,
                );
                AppRouter.navigateTo(context, const Otp());
              },
              registerError: (error) => showFlashMessage(
                message: error.message ?? '',
                type: FlashMessageType.error,
                context: context,
              ),
            );
          },
          child: AppButton(
            top: 30.h,
            onPressed: () {
              if (context
                  .read<RegisterCubit>()
                  .formKey
                  .currentState!
                  .validate()) {
                context.read<RegisterCubit>().register();
              }
            },
            child: AppText(
              text: LocaleKeys.register.tr(),
              size: 16.sp,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),

        TextButton(
          onPressed: () {},
          child: AppText(
            text: LocaleKeys.iAlreadyHaveAnAccount.tr(),
            size: 16.sp,
            color: AppColors.secondray,
          ),
        ),
      ],
    );
  }
}
