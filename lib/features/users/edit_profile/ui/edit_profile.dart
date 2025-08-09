import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/widgets/app_button.dart';
import 'package:maosul_advanced/core/widgets/app_input.dart';
import 'package:maosul_advanced/core/widgets/app_text.dart';
import 'package:maosul_advanced/core/widgets/custom_app_bar.dart';
import 'package:maosul_advanced/generated/locale_keys.g.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/app_cached.dart';
import '../../../../core/widgets/custom_bottom_nav.dart';
import '../logic/cubit/edit_profile_cubit.dart';
import '../logic/cubit/edit_profile_state.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileCubit, EditProfileState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: const CustomBottomNav(),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(130.h),
            child: const CustomAppBar(title: 'تعديل البيانات', isHome: false),
          ),
          body: Column(
            children: [
              context.read<EditProfileCubit>().profileImage.isEmpty
                  ? InkWell(
                      onTap: () =>
                          context.read<EditProfileCubit>()
                            ..getProfileImage(context),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100.r),
                            child: AppCachedImage(
                              image: "",
                              height: 120.h,
                              width: 120.w,
                            ),
                          ),
                          PositionedDirectional(
                            end: 0,
                            child: Icon(
                              Icons.edit_square,
                              color: AppColors.primary,
                              size: 25.sp,
                            ),
                          ),
                        ],
                      ),
                    )
                  : Stack(
                      children: [
                        Container(
                          height: 120.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: FileImage(
                                context
                                    .read<EditProfileCubit>()
                                    .profileImage
                                    .first,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          child: InkWell(
                            onTap: () =>
                                context.read<EditProfileCubit>()
                                  ..removeProfileImage(),
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            child: Icon(
                              Icons.cancel,
                              color: Colors.red,
                              size: 25.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
              SizedBox(height: 24.h),
              AppInput(
                filled: true,
                color: AppColors.primaryMedium.withAlpha(100),
                prefixIcon: Icon(
                  Icons.person,
                  color: AppColors.primary,
                  size: 24.sp,
                ),
                hint: 'اسلام أسامة هندام',
              ),
              AppInput(
                top: 16.h,
                filled: true,
                color: AppColors.primaryMedium.withAlpha(100),
                prefixIcon: Icon(
                  Icons.email,
                  color: AppColors.primary,
                  size: 24.sp,
                ),
                hint: 'benimaskim1994@gmail.com',
              ),
              AppInput(
                top: 16.h,
                filled: true,
                color: AppColors.primaryMedium.withAlpha(100),
                prefixIcon: Icon(
                  Icons.phone,
                  color: AppColors.primary,
                  size: 24.sp,
                ),
                hint: '+9662584258258',
              ),

              AppButton(
                onPressed: () {},
                top: 24.h,
                child: AppText(
                  text: LocaleKeys.save.tr(),
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
