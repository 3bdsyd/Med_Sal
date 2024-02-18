import 'package:get/get.dart';
import 'package:med_sal/core/constants/app_routes.dart';

abstract class SProviderEditsController extends GetxController {
  done();
}

class SProviderEditsControllerImp extends SProviderEditsController {
  @override
  done() {
    Get.offNamed(AppRoutes.spLayoutRoute);
  }
}
