import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/widgets/app_input.dart';
import '../../../../../generated/locale_keys.g.dart';
import '../log_in.dart';

class LoginFields extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController phoneController;
  final TextEditingController passwordController;
  const LoginFields({
    super.key,
    required this.formKey,
    required this.phoneController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          AppInput(
            filled: true,
            color: Colors.white,
            hint: LocaleKeys.phone.tr(),
            controller: phoneController,
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
                          phoneCode = country.phoneCode;
                          debugPrint(phoneCode);
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
          ),
          AppInput(
            top: 16.h,
            filled: true,
            controller: passwordController,
            color: Colors.white,
            hint: LocaleKeys.password.tr(),
            prefixIcon: Icon(Icons.lock, color: AppColors.primary, size: 24.sp),
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
