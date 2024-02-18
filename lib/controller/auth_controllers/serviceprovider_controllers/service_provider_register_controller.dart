import 'package:get/get.dart';
import 'package:med_sal/core/constants/app_routes.dart';

abstract class ServiceProviderRegisterController extends GetxController {
  spRegiserDone();
}

class ServiceProviderRegisterControllerImp
    extends ServiceProviderRegisterController {
  @override
  spRegiserDone() {
    Get.offNamed(AppRoutes.spLoginRoute);
  }
}
