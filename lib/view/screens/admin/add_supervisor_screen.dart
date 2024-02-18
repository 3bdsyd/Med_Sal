import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/admin/add_supervisor_controller.dart';
import 'package:med_sal/core/localizations/app_strings.dart';
import 'package:med_sal/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:med_sal/core/shared/componnents/custom_nav_arrow.dart';
import 'package:med_sal/view/widgets/admin/custom_admin_search_field.dart';
import 'package:med_sal/view/widgets/admin/custom_admin_title_text.dart';
import 'package:med_sal/view/widgets/admin/manage_supervisors/custom_add_supervisor.dart';
import 'package:med_sal/view/widgets/admin/manage_supervisors/custom_supervisor_info.dart';

class AddSupervisorScreen extends StatelessWidget {
  const AddSupervisorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AddSupervisorControllerImp());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                const CustomPaintAppTop(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Get.height * 0.08,
                      ),
                      const Center(
                        child: CustomAdminTitleText(
                          title: AppStrings.manageSupervisors,
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.06,
                      ),
                      const CustomAdminSearchField(
                          hintText: AppStrings.enterName),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      CustomAddSupervisor(
                        onTap: () {},
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      const CustomSupervisorInfo(),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: 10.w,
                    top: 30.h,
                  ),
                  child: const CustomNavArrow(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
