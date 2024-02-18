import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/admin/service_managment_controller.dart';
import 'package:med_sal/data/datasource/static/admin/service_manag_list.dart';
import 'package:med_sal/view/widgets/admin/service_managment/service_manag_data_table.dart';

class CustomSerrviceMangPagination
    extends GetView<ServiceManagmentControllerImp> {
  const CustomSerrviceMangPagination({
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
        itemCount: controller.getTotalPage(serviceManageList, 3),
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Column(
              children: [
                CustomServiceMangDataTable(
                  currentData:
                      controller.getCurrentData(index, 3, serviceManageList),
                ),
              ],
            ),
          );
        });
  }
}
