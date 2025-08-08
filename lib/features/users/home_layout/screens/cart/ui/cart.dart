import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/widgets/app_button.dart';
import 'package:maosul_advanced/core/widgets/app_text.dart';
import '../../../../../../core/widgets/custom_app_bar.dart';
import 'widgets/address_delivary.dart';
import 'widgets/cart_list_view.dart';
import 'widgets/cart_note_and_price.dart';
import 'widgets/payment_way.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(125.h),
        child: const CustomAppBar(title: 'السلة'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const CartListView(),
              const CartNoteAndPrice(),
              const PaymentWay(),
              const AddressDelivary(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppButton(
                    onPressed: () {},
                    width: 165.w,
                    child: const AppText(
                      text: 'تنفيذ الطلب',
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  AppButton(
                    color: Colors.white,
                    onPressed: () {},
                    width: 165.w,
                    borderColor: Colors.grey,
                    child: const AppText(
                      text: 'تنفيذ الطلب',
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 120.h),
            ],
          ),
        ),
      ),
    );
  }
}
