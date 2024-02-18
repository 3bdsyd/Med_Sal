import 'package:get/get.dart';
import 'package:med_sal/controller/layout/layout_controller.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LayoutControllerImp(),
      fenix: true,
    );
  }
}
