import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RefferalCodeController extends GetxController {
  //TODO: Implement RefferalCodeController

  final GlobalKey<FormState>addRefferalFormkey=GlobalKey<FormState>();
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
