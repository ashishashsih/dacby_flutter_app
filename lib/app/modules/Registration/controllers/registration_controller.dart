import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController {
  //TODO: Implement RegistrationController

  final count = 0.obs;
  final GlobalKey<FormState>registrationFormkey=GlobalKey<FormState>();
  var isChecked=false.obs;
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
