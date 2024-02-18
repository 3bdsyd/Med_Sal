import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/layout/layout_controller.dart';
import 'package:med_sal/controller/service_provider_controllers/add_service_product_controller.dart';

import 'package:med_sal/core/shared/componnents/bottom_navigation_bar/custom_bottom_nav_bar.dart';

class SpLayoutScreen extends StatelessWidget {
  const SpLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.put(SpLayoutControllerImp());
    Get.put(AddServiceProductControllerImp());
    return GetBuilder<LayoutControllerImp>(builder: (layController) {
      return Scaffold(
        body: layController.spPagesList.elementAt(layController.currentPage),
        bottomNavigationBar: const CustomBottomNavBar(),
      );
    });
  }
}
