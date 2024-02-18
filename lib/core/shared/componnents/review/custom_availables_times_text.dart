import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constants/app_colors.dart';
import 'package:med_sal/core/localizations/app_strings.dart';

class CustomAvailableTimesText extends StatelessWidget {
  const CustomAvailableTimesText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.availableTimes.tr,
      style: Theme.of(context).textTheme.subtitle2!.copyWith(
            color: AppColors.blackColor,
            fontSize: 13.5.sp,
          ),
    );
  }
}
