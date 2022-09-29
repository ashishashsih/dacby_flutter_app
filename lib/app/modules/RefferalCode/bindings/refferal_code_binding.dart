import 'package:get/get.dart';

import '../controllers/refferal_code_controller.dart';

class RefferalCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RefferalCodeController>(
      () => RefferalCodeController(),
    );
  }
}
