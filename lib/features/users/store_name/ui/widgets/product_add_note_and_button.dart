import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/widgets/app_button.dart';
import 'package:maosul_advanced/core/widgets/app_input.dart';
import 'package:maosul_advanced/core/widgets/app_text.dart';
import '../../../../../core/constants/colors.dart';

class ProductAddNoteAndButton extends StatelessWidget {
  final TextEditingController noteController;
  const ProductAddNoteAndButton({super.key, required this.noteController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: const Divider(color: AppColors.primary),
        ),
        AppText(text: 'ملاحظات', size: 16.sp, fontWeight: FontWeight.w600),
        AppInput(
          filled: true,
          maxLines: 4,
          start: 0,
          end: 0,
          border: 10.r,
          top: 10.h,
          hint: 'سجل ملاحظاتك',
          controller: noteController,
          bottom: 24.h,
        ),

        Center(
          child: AppButton(
            onPressed: () {},
            child: AppText(
              text: 'اضف المنتج',
              size: 16.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
