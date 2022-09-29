import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddAddressController extends GetxController {
  //TODO: Implement AddAddressController
  final GlobalKey<FormState>addAddressFormkey=GlobalKey<FormState>();
  var isChecked=false.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
