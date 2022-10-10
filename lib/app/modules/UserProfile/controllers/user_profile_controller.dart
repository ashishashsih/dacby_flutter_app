import 'dart:convert';

import 'package:app_decby/app/modules/Games/model/GameModel.dart';
import 'package:app_decby/app/other/api_service.dart';
import 'package:get/get.dart';

class UserProfileController extends GetxController {
  //TODO: Implement UserProfileController

  var isLoading=false.obs;
  var gameList=<GameModel>[].obs;
  @override
  void onInit()
  {
    super.onInit();
    getGameData();
  }

  void getGameData()async
  {
    print("valide");
    isLoading.value = true;
    var response = await ApiService().getGameList();
    print("material response is here:-${response}");
    isLoading.value = false;
    gameList.value=gameModelFromJson(jsonEncode(response['game_list']));
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
