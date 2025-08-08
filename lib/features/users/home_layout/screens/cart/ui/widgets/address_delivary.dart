import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/constants/colors.dart';
import '../../../../../../../core/widgets/app_text.dart';

class AddressDelivary extends StatefulWidget {
  const AddressDelivary({super.key});

  @override
  State<AddressDelivary> createState() => _AddressDelivaryState();
}

class _AddressDelivaryState extends State<AddressDelivary> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          top: 16.h,
          bottom: 10.h,
          text: 'عنوان التوصيل',
          size: 14.sp,
          fontWeight: FontWeight.w600,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          width: 343.w,
          decoration: BoxDecoration(
            color: AppColors.primaryMedium,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  AppText(
                    text: 'العنوان الحالي',
                    size: 12.sp,
                    color: Colors.black,
                  ),
                  const Spacer(),
                  Radio(
                    value: 0,
                    groupValue: value,
                    activeColor: AppColors.primary,
                    onChanged: (value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ),
                ],
              ),
              Divider(color: Colors.grey, thickness: 1.h),
              Row(
                children: [
                  AppText(text: 'عنوان جديد', size: 12.sp, color: Colors.black),
                  const Spacer(),
                  Radio(
                    value: 1,
                    groupValue: value,
                    activeColor: AppColors.primary,
                    onChanged: (value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 24.h),
      ],
    );
  }
}
