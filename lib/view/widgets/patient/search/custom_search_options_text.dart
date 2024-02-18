import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/localizations/app_strings.dart';

class CustomOptionFilterText extends StatelessWidget {
  const CustomOptionFilterText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.readingOptions.tr,
      style: Theme.of(context).textTheme.caption,
    );
  }
}
