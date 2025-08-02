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
import '../register.dart';

class RegisterFields extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController locationController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  const RegisterFields({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.emailController,
    required this.phoneController,
    required this.locationController,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  @override
  State<RegisterFields> createState() => _RegisterFieldsState();
}

class _RegisterFieldsState extends State<RegisterFields> {
  bool isPassSequre = true;
  bool isConfirmPassSequre = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
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
            controller: widget.nameController,
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
            controller: widget.phoneController,
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
                          registerCode = country.phoneCode;
                          debugPrint(registerCode);
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
            controller: widget.emailController,
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
              showModalBottomSheet(
                context: context,
                builder: (context) => BlocProvider(
                  create: (context) => MapCubit(),
                  child: const Location(),
                ),
              );
            },
            prefixIcon: Icon(
              Icons.location_on,
              color: AppColors.primary,
              size: 24.sp,
            ),
            hint: LocaleKeys.confirm_location.tr(),
            controller: widget.locationController,
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
            controller: widget.passwordController,
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
              if (value!.isEmpty) {
                return LocaleKeys.confirmPassword.tr();
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
