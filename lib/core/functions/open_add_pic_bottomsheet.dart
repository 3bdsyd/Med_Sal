import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constants/app_colors.dart';
import 'package:med_sal/view/widgets/service_provider/add_service_product/custom_add_pic_bottomsheet.dart';

Future<dynamic> openAddPicBottomSheet() {
  return Get.bottomSheet(
    isScrollControlled: true,
    barrierColor: AppColors.greyColor.withOpacity(0.5),
    backgroundColor: AppColors.primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.r),
        topRight: Radius.circular(30.r),
      ),
    ),
    const CustomAddPicBottomSheet(),
  );
}
