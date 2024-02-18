import 'package:med_sal/core/constants/app_colors.dart';
import 'package:med_sal/core/localizations/app_strings.dart';

getUserTypeColor(String type) {
  switch (type) {
    case AppStrings.patient:
      return AppColors.greenColor;
    case AppStrings.serviceProvider:
      return AppColors.orangeAccent;
  }
}
