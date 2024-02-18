import 'package:get/get.dart';
import 'package:med_sal/core/constants/app_colors.dart';
import 'package:med_sal/view/widgets/service_provider/reviews/custpm_edit_post_dialog.dart';

Future<dynamic> openEditPostDialog() {
  return Get.dialog(
    barrierDismissible: false,
    barrierColor: AppColors.greyColor.withOpacity(0.5),
    const CustomEditPostDialog(),
  );
}
