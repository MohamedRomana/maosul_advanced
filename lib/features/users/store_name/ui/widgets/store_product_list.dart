import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/di/dependancy_injection.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/widgets/app_cached.dart';
import '../../../../../core/widgets/app_text.dart';
import '../../../../../generated/locale_keys.g.dart';
import '../../logic/cubit/add_to_cart_cubit.dart';
import '../../logic/cubit/show_product_cubit.dart';
import '../../logic/cubit/store_name_cubit.dart';
import '../../logic/cubit/store_name_state.dart';
import 'add_to_cart_sheet.dart';
import 'custom_empty_sub_sections.dart';

class StoreProductsList extends StatelessWidget {
  const StoreProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreNameCubit, StoreNameState>(
      builder: (context, state) {
        final cubit = context.read<StoreNameCubit>();

        return cubit.services.isEmpty
            ? const CustomEmptySubSections()
            : ListView.separated(
                itemCount: cubit.services.length,
                padding: EdgeInsetsDirectional.only(
                  start: 16.w,
                  end: 16.w,
                  top: 24.h,
                  bottom: 40.h,
                ),
                separatorBuilder: (context, index) => SizedBox(height: 16.h),
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.all(10.r),
                  width: 343.w,
                  decoration: BoxDecoration(
                    color: AppColors.primaryMedium,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100.r),
                            child: AppCachedImage(
                              image: cubit.services[index].firstImage ?? "",
                              height: 60.w,
                              width: 60.w,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 150.w,
                                child: AppText(
                                  text: cubit.services[index].title ?? "",
                                  color: Colors.black,
                                  size: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 150.w,
                                child: AppText(
                                  top: 11.h,
                                  text: '‏${cubit.services[index].price} ر.س',
                                  color: Colors.black,
                                  size: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              final serviceId = cubit.services[index].id;
                              return MultiBlocProvider(
                                providers: [
                                  BlocProvider(
                                    create: (context) =>
                                        ShowProductCubit(getIt())
                                          ..getShowProduct(
                                            serviceId: serviceId.toString(),
                                          ),
                                  ),
                                  BlocProvider(
                                    create: (context) =>
                                        AddToCartCubit(getIt()),
                                  ),
                                ],
                                child: AddToCardSheet(
                                  serviceId: serviceId.toString(),
                                ),
                              );
                            },
                          );
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.r),
                          ),
                          minimumSize: Size(60.w, 30.h),
                        ),
                        child: AppText(
                          text: LocaleKeys.add.tr(),
                          color: Colors.white,
                          size: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              );
      },
    );
  }
}
