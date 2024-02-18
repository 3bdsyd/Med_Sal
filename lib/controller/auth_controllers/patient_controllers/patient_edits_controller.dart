import 'package:get/get.dart';
import 'package:med_sal/core/constants/app_routes.dart';

abstract class PatientEditsController extends GetxController {
  done();
}

class PatientEditsControllerImp extends PatientEditsController {
  @override
  done() {
    Get.offNamed(AppRoutes.patientlayoutRoute);
  }
}
