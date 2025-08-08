import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/constants/colors.dart';
import '../../../../../../../core/widgets/app_cached.dart';
import '../../../../../../../core/widgets/app_text.dart';
import '../../logic/cubit/cart_cubit.dart';
import '../../logic/cubit/cart_state.dart';
import 'cart_list_shimmer.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      buildWhen: (previous, current) =>
          current is CartSuccess ||
          current is CartLoading ||
          current is CartError ||
          current is ChangeCount,
      builder: (context, state) {
        return const CartState.cartLoading() == state
            ? const CartListShimmer()
            : ListView.separated(
                padding: EdgeInsets.only(bottom: 20.h),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: context.read<CartCubit>().cartItems!.length,
                shrinkWrap: true,
                separatorBuilder: (context, index) => SizedBox(height: 18.h),
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        width: 343.w,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 10.h,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.primaryMedium,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1000.r),
                              child: AppCachedImage(
                                image:
                                    context
                                        .read<CartCubit>()
                                        .cartItems![index]!
                                        .firstImage ??
                                    "",
                                height: 60.w,
                                width: 60.w,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              children: [
                                SizedBox(
                                  width: 100.w,
                                  child: AppText(
                                    text:
                                        context
                                            .read<CartCubit>()
                                            .cartItems![index]!
                                            .serviceTitle ??
                                        "",
                                    size: 12.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    bottom: 11.h,
                                  ),
                                ),
                                SizedBox(
                                  width: 100.w,
                                  child: AppText(
                                    text:
                                        '‏${context.read<CartCubit>().cartItems![index]!.price}ر.س',
                                    size: 12.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    context.read<CartCubit>().incrementCountAt(
                                      index,
                                    );
                                  },
                                  child: CircleAvatar(
                                    radius: 15.r,
                                    backgroundColor: AppColors.primary,
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
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
                                    text: context
                                        .read<CartCubit>()
                                        .cartItems![index]!
                                        .count
                                        .toString(),
                                    size: 14.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    context.read<CartCubit>().decrementCountAt(
                                      index,
                                    );
                                  },
                                  child: CircleAvatar(
                                    radius: 15.r,
                                    backgroundColor: const Color(0xffBFDBCE),
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      PositionedDirectional(
                        top: 5.h,
                        end: 10.w,
                        child: GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.close,
                            color: Colors.red,
                            size: 16.sp,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
      },
    );
  }
}
