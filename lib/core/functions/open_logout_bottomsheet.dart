import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constants/app_colors.dart';
import 'package:med_sal/core/shared/componnents/logout/custom_logout_bottom_sheet.dart';

Future<dynamic> openLogoutBottomSheet() {
  return Get.bottomSheet(
    isScrollControlled: true,
    backgroundColor: AppColors.primaryColor,
    barrierColor: AppColors.greyColor.withOpacity(0.5),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.r),
        topRight: Radius.circular(30.r),
      ),
    ),
    isDismissible: true,
    const CustomLogOutBottomSheet(),
  );
}
