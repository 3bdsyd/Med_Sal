import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/layout/layout_controller.dart';
import 'package:med_sal/core/constants/app_colors.dart';
import 'package:med_sal/core/constants/app_image_assets.dart';
import 'package:med_sal/core/localizations/app_strings.dart';
import 'package:med_sal/core/shared/componnents/customPaint/custom_paint_app_circular_top.dart';
import 'package:med_sal/core/shared/componnents/custom_app_button.dart';
import 'package:med_sal/core/shared/componnents/custom_nav_arrow.dart';
import 'package:med_sal/core/shared/componnents/custom_search_field.dart';
import 'package:med_sal/core/shared/componnents/location/custom_location_title.dart';
import 'package:med_sal/core/shared/componnents/location/custom_point_location.dart';

class PatientYourLocationScreen extends StatelessWidget {
  const PatientYourLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LayoutControllerImp layoutControoler = Get.find<LayoutControllerImp>();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Image.asset(
                  AppImageAssets.map,
                  fit: BoxFit.fill,
                ),
                const CustomPaintAppCircularTop(),
                Column(
                  children: [
                    SizedBox(
                      height: Get.height * 0.087,
                    ),
                    const CustomLocationTitle(
                      text: AppStrings.yourLocation,
                    ),
                    SizedBox(
                      height: Get.height * 0.048,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: const CustomSearchField(isNearest: true),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: 10.w,
                    top: 35.h,
                  ),
                  child: CustomNavArrow(
                    color: AppColors.accentColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 300.h, left: 70.w),
                  child: const CustomPointLocation(),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: 20.h,
                    top: Get.height - Get.height * 0.19,
                  ),
                  child: CustomAppButton(
                    text: AppStrings.save.tr,
                    onPressed: () {
                      layoutControoler.changePage(3, 3);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
