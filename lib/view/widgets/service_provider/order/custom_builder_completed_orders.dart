import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/data/datasource/static/service_provider/order_completed_static.dart';
import 'package:med_sal/view/widgets/service_provider/order/custom_completed_order_item_builder.dart';

class CustomBuilderCompletedOrders extends StatelessWidget {
  const CustomBuilderCompletedOrders({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => CustomCompletedOrderItemBuilder(
        orderModel: orderCompletedList[index],
      ),
      itemCount: orderCompletedList.length,
      separatorBuilder: (BuildContext context, int index) => SizedBox(
        height: Get.height * 0.01,
      ),
    );
  }
}
