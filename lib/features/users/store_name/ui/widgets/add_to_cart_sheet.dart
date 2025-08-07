import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../logic/cubit/show_product_cubit.dart';
import '../../logic/cubit/show_product_state.dart';
import 'product_count_price.dart';
import 'product_sheet_details.dart';

class AddToCardSheet extends StatelessWidget {
  final String serviceId;
  const AddToCardSheet({super.key, required this.serviceId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowProductCubit, ShowProductState>(
      builder: (context, state) {
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
              ProductCountPrice(id: serviceId),
            ],
          ),
        );
      },
    );
  }
}
