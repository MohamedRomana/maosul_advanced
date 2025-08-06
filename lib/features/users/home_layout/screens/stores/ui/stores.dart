import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/constants/colors.dart';
import 'package:maosul_advanced/core/di/dependancy_injection.dart';
import 'package:maosul_advanced/core/helper/extentions.dart';
import 'package:maosul_advanced/core/widgets/app_cached.dart';
import 'package:maosul_advanced/core/widgets/app_text.dart';
import '../../../../../../core/cache/cache_helper.dart';
import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../../generated/locale_keys.g.dart';
import '../logic/cubit/stores_cubit.dart';
import '../logic/cubit/stores_state.dart';
import 'widgets/custom_stores_shimmer_list.dart';

class Stores extends StatelessWidget {
  const Stores({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StoresCubit(getIt())..getStores(),
      child: Builder(
        builder: (context) {
          final cubit = context.read<StoresCubit>();
          debugPrint(CacheHelper.getLat().toString());
          debugPrint(CacheHelper.getLng().toString());
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(130.h),
              child: CustomAppBar(
                title: LocaleKeys.stores.tr(),
                isSearch: true,
              ),
            ),
            body: BlocBuilder<StoresCubit, StoresState>(
              builder: (context, state) {
                return const StoresState.storesLoading() == state
                    ? const CustomStoresShimmerList()
                    : ListView.separated(
                        itemCount: cubit.storesData.length,
                        padding: EdgeInsetsDirectional.only(
                          start: 16.w,
                          end: 16.w,
                          bottom: 140.h,
                        ),
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 16.h),
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            context.pushNamed(
                              Routes.storeName,
                              arguments: cubit.storesData[index].id,
                            );
                          },
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.r),
                                child: AppCachedImage(
                                  image: cubit.storesData[index].avatar ?? "",
                                  fit: BoxFit.fill,
                                  height: 150.h,
                                  width: 343.w,
                                ),
                              ),
                              Container(
                                height: 150.h,
                                width: 343.w,
                                decoration: BoxDecoration(
                                  color: Colors.black.withAlpha(150),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                              PositionedDirectional(
                                top: 10.h,
                                start: 10.w,
                                child: Container(
                                  height: 22.h,
                                  width: 50.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    color: AppColors.primary,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 15.sp,
                                      ),
                                      AppText(
                                        text: cubit.storesData[index].rate
                                            .toString(),
                                        size: 12.sp,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                bottom: 10.h,
                                start: 10.w,
                                end: 10.w,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 343.w,
                                      child: AppText(
                                        textAlign: TextAlign.center,
                                        text:
                                            cubit.storesData[index].name ?? "",
                                        size: 12.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        bottom: 5.h,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 343.w,
                                      child: AppText(
                                        textAlign: TextAlign.center,
                                        text:
                                            'سعر التوصيل: ${cubit.storesData[index].delivery}ر.س - يبعد عنك: ${cubit.storesData[index].distance} كم',
                                        size: 10.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
              },
            ),
          );
        },
      ),
    );
  }
}
