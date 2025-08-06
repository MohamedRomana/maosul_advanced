import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'product_add_note_and_button.dart';
import 'product_count_price.dart';
import 'product_sheet_details.dart';

final _noteController = TextEditingController();

class AddToCardSheet extends StatelessWidget {
  const AddToCardSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.h,
      width: double.infinity,
      padding: EdgeInsetsDirectional.only(
        start: 16.w,
        end: 16.w,
        bottom: 32.h,
        top: 24.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Column(
        children: [
          const ProductSheetDetails(),
          const ProductCountPrice(),
          ProductAddNoteAndButton(noteController: _noteController),
        ],
      ),
    );
  }
}
