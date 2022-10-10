import 'package:get/get.dart';

import '../controllers/success_message_controller.dart';

class SuccessMessageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SuccessMessageController>(
      () => SuccessMessageController(),
    );
  }
}
