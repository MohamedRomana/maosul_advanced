import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/widgets/app_input.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../generated/locale_keys.g.dart';
import '../forget_pass.dart';

class ForgetPassFields extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController phoneController;
  const ForgetPassFields({
    super.key,
    required this.formKey,
    required this.phoneController,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: AppInput(
        top: 16.h,
        filled: true,
        color: Colors.white,
        inputType: TextInputType.phone,
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
                      forgetCode = country.phoneCode;
                      debugPrint(forgetCode);
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
