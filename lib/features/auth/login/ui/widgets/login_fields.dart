import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/widgets/app_input.dart';
import '../../../../../generated/locale_keys.g.dart';
import '../../logic/login_cubit.dart';

class LoginFields extends StatefulWidget {
  const LoginFields({super.key});

  @override
  State<LoginFields> createState() => _LoginFieldsState();
}

class _LoginFieldsState extends State<LoginFields> {
  bool isSecure = true;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          AppInput(
            filled: true,
            color: Colors.white,
            hint: LocaleKeys.phone.tr(),
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
                          cubit.phoneCode = country.phoneCode;
                          debugPrint(cubit.phoneCode);
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
            validate: (value) {
              if (value!.isEmpty) {
                return LocaleKeys.phone.tr();
              }
              return null;
            },
          ),
          AppInput(
            top: 16.h,
            filled: true,
            secureText: isSecure,
            suffixIcon: IconButton(
              icon: Icon(
                isSecure ? Icons.visibility_off : Icons.visibility,
                color: AppColors.primary,
                size: 24.sp,
              ),
              onPressed: () {
                setState(() {
                  isSecure = !isSecure;
                });
              },
            ),
            controller: cubit.passwordController,
            color: Colors.white,
            hint: LocaleKeys.password.tr(),
            prefixIcon: Icon(Icons.lock, color: AppColors.primary, size: 24.sp),
            validate: (value) {
              if (value!.isEmpty) {
                return LocaleKeys.password.tr();
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
