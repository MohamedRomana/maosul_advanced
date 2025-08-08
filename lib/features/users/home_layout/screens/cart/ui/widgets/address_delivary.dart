import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/constants/colors.dart';
import '../../../../../../../core/map/logic/cubit/map_cubit.dart';
import '../../../../../../../core/map/map.dart';
import '../../../../../../../core/widgets/app_text.dart';
import '../../logic/cubit/store_order_cubit.dart';
import '../../logic/cubit/store_order_state.dart';

class AddressDelivary extends StatelessWidget {
  const AddressDelivary({super.key});

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
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      if (context.read<StoreOrderCubit>().deliveryIndex == 0) {
                        context.read<StoreOrderCubit>().changeDeliveryIndex(-1);
                      } else {
                        context.read<StoreOrderCubit>().changeDeliveryIndex(0);
                      }
                    },
                    child: Row(
                      children: [
                        AppText(
                          text: 'العنوان الحالي',
                          size: 12.sp,
                          color: Colors.black,
                        ),
                        const Spacer(),
                        Container(
                          height: 22.w,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color:
                                context.read<StoreOrderCubit>().deliveryIndex ==
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
                  Divider(color: Colors.grey, thickness: 1.h),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      if (context.read<StoreOrderCubit>().deliveryIndex == 1) {
                        context.read<StoreOrderCubit>().changeDeliveryIndex(-1);
                      } else {
                        showModalBottomSheet(
                          context: context,
                          builder: (bottomSheetContext) {
                            final storeOrderCubit = context
                                .read<StoreOrderCubit>();

                            return MultiBlocProvider(
                              providers: [
                                BlocProvider(create: (_) => MapCubit()),
                                BlocProvider.value(value: storeOrderCubit),
                              ],
                              child: const Location(),
                            );
                          },
                        );
                        context.read<StoreOrderCubit>().changeDeliveryIndex(1);
                      }
                    },
                    child: Row(
                      children: [
                        AppText(
                          text: 'عنوان جديد',
                          size: 12.sp,
                          color: Colors.black,
                        ),
                        const Spacer(),
                        Container(
                          height: 22.w,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color:
                                context.read<StoreOrderCubit>().deliveryIndex ==
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
            SizedBox(height: 24.h),
          ],
        );
      },
    );
  }
}
