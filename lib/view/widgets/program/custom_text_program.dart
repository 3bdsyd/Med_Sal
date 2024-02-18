import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constants/app_colors.dart';
import 'package:med_sal/core/constants/app_themes/app_fonts.dart';
import 'package:med_sal/core/localizations/app_strings.dart';

class CustomBodyTextProgram extends StatelessWidget {
  const CustomBodyTextProgram({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.systemDescription.tr,
      style: TextStyle(
        fontWeight: AppFontWeight.medium,
        fontSize: 10.sp,
        color: AppColors.greyColor,
      ),
      textAlign: TextAlign.center,
    );
  }
}
