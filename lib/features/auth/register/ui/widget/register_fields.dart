import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/map/logic/cubit/map_cubit.dart';
import 'package:maosul_advanced/core/widgets/app_input.dart';
import 'package:maosul_advanced/generated/locale_keys.g.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/map/map.dart';
import '../../logic/register_cubit.dart';

class RegisterFields extends StatefulWidget {
  final TextEditingController confirmPasswordController;
  const RegisterFields({super.key, required this.confirmPasswordController});

  @override
  State<RegisterFields> createState() => _RegisterFieldsState();
}

class _RegisterFieldsState extends State<RegisterFields> {
  bool isPassSequre = true;
  bool isConfirmPassSequre = true;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          AppInput(
            filled: true,
            color: Colors.white,
            prefixIcon: Icon(
              Icons.person,
              color: AppColors.primary,
              size: 24.sp,
            ),
            hint: LocaleKeys.userName.tr(),
            controller: cubit.nameController,
            validate: (value) {
              if (value!.isEmpty) {
                return LocaleKeys.name.tr();
              }
              return null;
            },
          ),
          AppInput(
            top: 16.h,
            filled: true,
            color: Colors.white,
            inputType: TextInputType.phone,
            controller: cubit.phoneController,
            prefixIcon: SizedBox(
              width: 130.w,
              child: FittedBox(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 16.w),
                      child: CountryPickerDropdown(
                        initialValue: 'SA',
                        itemBuilder: _buildDropdownItem,
                        sortComparator: (Country a, Country b) =>
                            a.isoCode.compareTo(b.isoCode),
                        onValuePicked: (Country country) {
                          cubit.registerCode = country.phoneCode;
                          debugPrint(cubit.registerCode);
                        },
                      ),
                    ),
                    Container(
                      height: 24.h,
                      width: 1.w,
                      decoration: const BoxDecoration(color: Colors.grey),
                    ),
                    SizedBox(width: 8.w),
                    Icon(Icons.phone, color: AppColors.primary, size: 24.sp),
                  ],
                ),
              ),
            ),
            hint: LocaleKeys.phone.tr(),
            validate: (value) {
              if (value!.isEmpty) {
                return LocaleKeys.phone.tr();
              }
              return null;
            },
          ),
          AppInput(
            controller: cubit.emailController,
            top: 16.h,
            filled: true,
            color: Colors.white,
            prefixIcon: Icon(
              Icons.email,
              color: AppColors.primary,
              size: 24.sp,
            ),
            hint: LocaleKeys.email.tr(),
            validate: (value) {
              if (value!.isEmpty) {
                return LocaleKeys.email.tr();
              }
              return null;
            },
          ),
          AppInput(
            top: 16.h,
            filled: true,
            color: Colors.white,
            read: true,
            onTap: () {
              final registerCubit = context.read<RegisterCubit>();

              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return MultiBlocProvider(
                    providers: [
                      BlocProvider(create: (_) => MapCubit()),
                      BlocProvider.value(value: registerCubit),
                    ],
                    child: const Location(),
                  );
                },
              );
            },
            prefixIcon: Icon(
              Icons.location_on,
              color: AppColors.primary,
              size: 24.sp,
            ),
            hint: LocaleKeys.confirm_location.tr(),
            controller: cubit.locationController,
            validate: (value) {
              if (value!.isEmpty) {
                return LocaleKeys.location_required.tr();
              }
              return null;
            },
          ),
          AppInput(
            top: 16.h,
            filled: true,
            secureText: isPassSequre,
            color: Colors.white,
            prefixIcon: Icon(Icons.lock, color: AppColors.primary, size: 24.sp),
            suffixIcon: IconButton(
              icon: Icon(
                isPassSequre ? Icons.visibility_off : Icons.visibility,
                color: AppColors.primary,
                size: 24.sp,
              ),
              onPressed: () {
                setState(() {
                  isPassSequre = !isPassSequre;
                });
              },
            ),
            hint: LocaleKeys.password.tr(),
            controller: cubit.passwordController,
            validate: (value) {
              if (value!.isEmpty) {
                return LocaleKeys.password_required.tr();
              }
              return null;
            },
          ),
          AppInput(
            top: 16.h,
            filled: true,
            secureText: isConfirmPassSequre,
            color: Colors.white,
            prefixIcon: Icon(Icons.lock, color: AppColors.primary, size: 24.sp),
            suffixIcon: IconButton(
              icon: Icon(
                isConfirmPassSequre ? Icons.visibility_off : Icons.visibility,
                color: AppColors.primary,
                size: 24.sp,
              ),
              onPressed: () {
                setState(() {
                  isConfirmPassSequre = !isConfirmPassSequre;
                });
              },
            ),
            hint: LocaleKeys.confirmPassword.tr(),
            controller: widget.confirmPasswordController,
            validate: (value) {
              if (cubit.passwordController.text != value) {
                return LocaleKeys.password_mismatch.tr();
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}

Widget _buildDropdownItem(Country country) => SizedBox(
  width: 70.w,
  child: FittedBox(
    child: Row(
      children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),
        // SizedBox(width: 8.w),
        Text("+${country.phoneCode}(${country.isoCode})"),
      ],
    ),
  ),
);
