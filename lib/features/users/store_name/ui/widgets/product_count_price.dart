// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/helper/extentions.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_input.dart';
import '../../../../../core/widgets/app_text.dart';
import '../../../../../core/widgets/flash_message.dart';
import '../../logic/cubit/add_to_cart_cubit.dart';
import '../../logic/cubit/add_to_cart_state.dart';
import '../../logic/cubit/show_product_cubit.dart';
import '../../logic/cubit/show_product_state.dart';

class ProductCountPrice extends StatelessWidget {
  final String id;
  const ProductCountPrice({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddToCartCubit, AddToCartState>(
      builder: (context, state) {
        final cubit = context.read<AddToCartCubit>();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        cubit.incrementCount();
                      },
                      child: CircleAvatar(
                        radius: 15.r,
                        backgroundColor: AppColors.primary,
                        child: const Icon(Icons.add, color: Colors.white),
                      ),
                    ),
                    Container(
                      width: 47.w,
                      margin: EdgeInsets.symmetric(horizontal: 6.w),
                      padding: EdgeInsets.symmetric(
                        horizontal: 19.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: AppText(
                        text: cubit.count.toString(),
                        size: 14.sp,
                        color: Colors.black,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        cubit.decrementCount();
                      },
                      child: CircleAvatar(
                        radius: 15.r,
                        backgroundColor: const Color(0xffBFDBCE),
                        child: const Icon(Icons.remove, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                BlocBuilder<ShowProductCubit, ShowProductState>(
                  builder: (context, state) {
                    final productCubit = context.read<ShowProductCubit>();
                    final unitPrice =
                        double.tryParse(
                          productCubit.productData?.price ?? '0',
                        ) ??
                        0;
                    final totalPrice = unitPrice * cubit.count;

                    return SizedBox(
                      width: 150.w,
                      child: AppText(
                        textAlign: TextAlign.end,
                        text: '‏${totalPrice.toStringAsFixed(2)} ر.س',
                        size: 14.sp,
                      ),
                    );
                  },
                ),
              ],
            ),
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
              controller: cubit.noteController,
              bottom: 24.h,
            ),

            Center(
              child: BlocConsumer<AddToCartCubit, AddToCartState>(
                listenWhen: (previous, current) =>
                    current is AddToCartLoading ||
                    current is AddToCartSuccess ||
                    current is AddToCartError,
                listener: (context, state) {
                  state.whenOrNull(
                    addToCartSuccess: (data) {
                      context.pushNamedAndRemoveUntil(
                        Routes.homeLayout,
                        predicate: (route) => false,
                      );
                      showFlashMessage(
                        context: context,
                        message: data.msg ?? "",
                        type: FlashMessageType.success,
                      );
                    },
                    addToCartError: (error) {
                      showFlashMessage(
                        context: context,
                        message: error.message ?? "",
                        type: FlashMessageType.error,
                      );
                    },
                  );
                },
                builder: (context, state) {
                  return AppButton(
                    onPressed: () {
                      cubit.addToCart(
                        serviceId: id,
                        count: cubit.count.toString(),
                      );
                    },
                    child: AddToCartState.addToCartLoading == state
                        ? const CircularProgressIndicator(color: Colors.white)
                        : AppText(
                            text: 'اضف المنتج',
                            size: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
