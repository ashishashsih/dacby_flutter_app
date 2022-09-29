import 'package:get/get.dart';

import '../controllers/game_detail_page_controller.dart';

class GameDetailPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GameDetailPageController>(
      () => GameDetailPageController(),
    );
  }
}
