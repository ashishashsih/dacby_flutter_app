import 'package:app_decby/app/modules/CreatePost/views/create_post_view.dart';
import 'package:app_decby/app/modules/Notification/views/notification_view.dart';
import 'package:app_decby/app/modules/Shop/views/shop_view.dart';
import 'package:app_decby/app/modules/UserProfile/views/user_profile_view.dart';
import 'package:app_decby/app/modules/home/views/home_view.dart';
import 'package:app_decby/app/other/CustomBottomNavigationBar.dart';
import 'package:app_decby/others/custome_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dash_board_controller.dart';

class DashBoardView extends GetView<DashBoardController> {
  DashBoardController controller = Get.put(DashBoardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        iconList: [
          'assets/images/icoRid',
          'assets/images/icoController',
          'assets/images/icoAdd',
          'assets/images/icoNotification',
          'assets/images/icoUser',
        ],
        onChange: (val) {
          controller.setSelectedIndex(val);
        },
        defaultSelectedIndex: controller.selectedIndex.value,
      ),
      backgroundColor: clrbackground,
      body:
      Center(
          child:
          Obx(() {
            return getPage();
          })
      ),
    );
  }

  Widget getPage() {
    switch (controller.selectedIndex.value) {
      case 0:
        controller.title.value = "Dacby";
        return HomeView();
      case 1:
        controller.title.value = "Games/Console";
        return ShopView();
      case 2:
        controller.title.value = "Add";
        return CreatePostView();
      case 3:
        controller.title.value = "Notificaiton";
        return NotificationView();
      case 4:
        controller.title.value = "User Profile";
        return UserProfileView();
      default:
        return Container(color: Colors.green,);
    }
  }
}
