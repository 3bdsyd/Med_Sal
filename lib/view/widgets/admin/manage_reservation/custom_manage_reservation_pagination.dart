import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/admin/manage_reservation_controller.dart';
import 'package:med_sal/core/constants/app_routes.dart';
import 'package:med_sal/core/shared/componnents/orders/custom_builder_orders.dart';
import 'package:med_sal/data/datasource/static/serv_prod_order_static.dart';

class CustomMangeReservationPagination
    extends GetView<ManageReservationControllerImp> {
  const CustomMangeReservationPagination({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: ((value) {
          controller.changePage(value);
        }),

        //physics: const NeverScrollableScrollPhysics(),
        itemCount: controller.getTotalPage(servProdOrderList, 3),
        itemBuilder: (context, index) {
          return CustomBuilderOrders(
            currentData: controller.getCurrentData(index, 3, servProdOrderList),
            onPressed: (() {
              Get.toNamed(AppRoutes.manageReservationReviewRoute);
            }),
          );
        });
  }
}
