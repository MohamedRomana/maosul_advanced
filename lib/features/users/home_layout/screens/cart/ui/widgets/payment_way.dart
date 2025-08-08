import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/constants/colors.dart';
import '../../../../../../../core/widgets/app_text.dart';
import '../../logic/cubit/store_order_cubit.dart';
import '../../logic/cubit/store_order_state.dart';

class PaymentWay extends StatelessWidget {
  const PaymentWay({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreOrderCubit, StoreOrderState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              top: 16.h,
              bottom: 10.h,
              text: 'طرق الدفع',
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
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      if (context.read<StoreOrderCubit>().paymentIndex == 0) {
                        context.read<StoreOrderCubit>().changePaymentIndex(-1);
                      } else {
                        context.read<StoreOrderCubit>().changePaymentIndex(0);
                      }
                    },
                    child: Row(
                      children: [
                        AppText(
                          text: 'الدفع عند الاستلام',
                          size: 12.sp,
                          color: Colors.black,
                        ),
                        const Spacer(),
                        Container(
                          height: 22.w,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color:
                                context.read<StoreOrderCubit>().paymentIndex ==
                                    0
                                ? AppColors.primary
                                : Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.done,
                              size: 15.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Divider(color: Colors.grey, thickness: 1.h),
                  SizedBox(height: 10.h),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      if (context.read<StoreOrderCubit>().paymentIndex == 1) {
                        context.read<StoreOrderCubit>().changePaymentIndex(-1);
                      } else {
                        context.read<StoreOrderCubit>().changePaymentIndex(1);
                      }
                    },
                    child: Row(
                      children: [
                        AppText(
                          text: 'دفع الكتروني',
                          size: 12.sp,
                          color: Colors.black,
                        ),
                        const Spacer(),
                        Container(
                          height: 22.w,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color:
                                context.read<StoreOrderCubit>().paymentIndex ==
                                    1
                                ? AppColors.primary
                                : Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.done,
                              size: 15.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
