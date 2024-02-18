import 'package:get/get.dart';
import 'package:med_sal/core/functions/open_registeration_refused_bottomsheet.dart';
import 'package:med_sal/core/functions/open_registertion_accepted_bootomsheet.dart';

abstract class ReviewRegisterRequestsController extends GetxController {
  goToRegisterationRefused();
  goToRegisterationaccepted();
}

class ReviewRegisterRequestsControllerImp
    extends ReviewRegisterRequestsController {
  @override
  goToRegisterationRefused() {
    openRegistertionRefusedBottomSheet();
  }

  @override
  goToRegisterationaccepted() {
    openRegistertionAcceptedBottomSheet();
  }
}
