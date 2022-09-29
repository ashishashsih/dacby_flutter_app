import 'package:get/get.dart';

class DashBoardController extends GetxController
{
  //TODO: Implement DashBoardController
  var selectedIndex=0.obs;
  var title="Dacby".obs;

  setSelectedIndex(int index)
  {
    selectedIndex.value=index;
    print("from controler:${selectedIndex.value}");
  }

  @override
  void onInit()
  {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose()
  {
    super.onClose();
  }
}
