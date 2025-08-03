import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/di/dependancy_injection.dart';
import 'package:maosul_advanced/core/widgets/app_router.dart';
import 'package:maosul_advanced/core/widgets/flash_message.dart';
import 'package:maosul_advanced/features/auth/forget_pass/logic/forget_pass_cubit.dart';
import 'package:maosul_advanced/features/auth/login/logic/login_state.dart';
import 'package:maosul_advanced/features/auth/register/logic/register_cubit.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_text.dart';
import '../../../../../generated/locale_keys.g.dart';
import '../../../forget_pass/ui/forget_pass.dart';
import '../../../register/ui/register.dart';
import '../../logic/login_cubit.dart';

class LoginButtons extends StatelessWidget {
  const LoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is LoginLoading ||
          current is LoginSuccess ||
          current is LoginFailure,
      listener: (context, state) {
        state.whenOrNull(
          loginLoading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(color: AppColors.primary),
              ),
            );
          },
          loginSuccess: (data) {
            Navigator.pop(context);
            showFlashMessage(
              message: data.msg ?? '',
              type: FlashMessageType.success,
              context: context,
            );
          },
          loginFailure: (error) {
            Navigator.pop(context);
            showFlashMessage(
              message: error.message ?? '',
              type: FlashMessageType.error,
              context: context,
            );
            debugPrint(error.message);
          },
        );
      },
      child: Column(
        children: [
          AppButton(
            top: 30.h,
            onPressed: () {
              if (cubit.formKey.currentState!.validate()) {
                cubit.login();
              }
            },
            child: AppText(
              text: LocaleKeys.login.tr(),
              size: 16.sp,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 27.h),
          TextButton(
            onPressed: () {
              AppRouter.navigateTo(
                context,
                BlocProvider(
                  create: (context) => ForgetPassCubit(getIt()),
                  child: const ForgetPass(),
                ),
              );
            },
            child: AppText(
              text: LocaleKeys.forgotPassword.tr(),
              size: 16.sp,
              color: Colors.red,
            ),
          ),
          SizedBox(height: 24.h),
          TextButton(
            onPressed: () {
              AppRouter.navigateTo(
                context,
                BlocProvider(
                  create: (context) => RegisterCubit(getIt()),
                  child: const Register(),
                ),
              );
            },
            child: AppText(
              text: LocaleKeys.newUser.tr(),
              size: 16.sp,
              color: AppColors.secondray,
            ),
          ),
        ],
      ),
    );
  }
}
