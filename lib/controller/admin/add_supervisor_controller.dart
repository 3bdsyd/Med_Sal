import 'package:get/get.dart';
import 'package:med_sal/core/functions/open_add_supervisor_bottomsheet.dart';

abstract class AddSupervisorController extends GetxController {
  openAddSupervisor();
}

class AddSupervisorControllerImp extends AddSupervisorController {
  @override
  openAddSupervisor() {
    openAddSuperisorsBottomSheet();
  }
}
