import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constants/app_colors.dart';
import 'package:med_sal/core/localizations/app_strings.dart';

class CustomReasonRejectionField extends StatelessWidget {
  const CustomReasonRejectionField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.bodyText2!.copyWith(
            fontSize: 11.sp,
            color: AppColors.greyColor,
          ),
      maxLines: 3,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: AppStrings.reasonRejection.tr,
        hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
              fontSize: 11.sp,
              color: AppColors.greyColor,
            ),
      ),
    );
  }
}
