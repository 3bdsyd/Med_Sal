import 'package:get/get.dart';
import 'package:med_sal/core/constants/app_routes.dart';

abstract class ProgramController extends GetxController {
  goToLogin();
}

class ProgramControllerImp extends ProgramController {
  @override
  goToLogin() {
    Get.toNamed(AppRoutes.loginRoute);
  }
}
