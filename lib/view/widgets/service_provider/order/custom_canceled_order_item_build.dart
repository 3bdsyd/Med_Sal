// ignore_for_file: unnecessary_null_in_if_null_operators

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:med_sal/core/constants/app_colors.dart';
import 'package:med_sal/core/localizations/app_strings.dart';
import 'package:med_sal/core/shared/componnents/product_details/custom_detail_prod_type_text.dart';
import 'package:med_sal/core/shared/componnents/product_details/custom_detal_prod_name_text.dart';
import 'package:med_sal/core/shared/componnents/product_details/custom_price_rwo_text.dart';
import 'package:med_sal/core/shared/componnents/product_details/custom_prouct_image.dart';
import 'package:med_sal/core/shared/componnents/order/custom_quantity.dart';
import 'package:med_sal/core/shared/componnents/order/custom_order_date.dart';
import 'package:med_sal/core/shared/componnents/order/custom_order_state_text.dart';
import 'package:med_sal/data/model/order_model.dart';
import 'package:med_sal/view/widgets/service_provider/order/custom_patient_name.dart';

class CustomCanceledOrderItemBuild extends StatelessWidget {
  final OrderModel orderModel;
  const CustomCanceledOrderItemBuild({
    Key? key,
    required this.orderModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9.35.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomProductImage(
                      height: Get.height * 0.0721,
                      width: Get.width * 0.183,
                      image: orderModel.image!,
                    ),
                    SizedBox(
                      width: Get.width * 0.032,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomPriceRwoText(
                          price: orderModel.price,
                          newPrice: orderModel.newPrice ?? null,
                          isSp: true,
                        ),
                        SizedBox(
                          height: Get.height * 0.005,
                        ),
                        const CustomQuantity(),
                        SizedBox(
                          height: Get.height * 0.005,
                        ),
                        if (orderModel.type != AppStrings.product)
                          const CustomOrderDate(),
                      ],
                    ),
                  ],
                ),
                CustomProDetalNameText(
                  name: orderModel.name,
                ),
                CustomDetailsProdTypeText(text: orderModel.type!),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomPatientName(),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                CustomOrderStateText(
                  state: orderModel.state!,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
