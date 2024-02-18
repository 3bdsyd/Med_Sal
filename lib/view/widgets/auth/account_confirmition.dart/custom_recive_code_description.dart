import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/localizations/app_strings.dart';

class CustomReciveCodeDescription extends StatelessWidget {
  const CustomReciveCodeDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.reciveCodeOnEmail.tr,
      style: Theme.of(context).textTheme.caption!.copyWith(
            fontSize: 14.sp,
          ),
    );
  }
}
