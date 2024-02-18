import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constants/app_colors.dart';
import 'package:med_sal/core/localizations/app_strings.dart';

class CustomTodayDateText extends StatelessWidget {
  const CustomTodayDateText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${AppStrings.today}, 23 AUG'.tr,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.subtitle2!.copyWith(
            color: AppColors.blackColor,
            fontSize: 14.sp,
          ),
    );
  }
}
