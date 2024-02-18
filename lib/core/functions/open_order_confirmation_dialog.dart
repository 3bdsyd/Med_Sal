import 'package:get/get.dart';
import 'package:med_sal/core/constants/app_colors.dart';
import 'package:med_sal/view/widgets/patient/custom_order_confirmation.dart';

Future<dynamic> openOrderConfirmationDialog() {
  return Get.dialog(
    barrierDismissible: false,
    barrierColor: AppColors.greyColor.withOpacity(0.8),
    const CustomOrderConfirmation(),
  );
}
