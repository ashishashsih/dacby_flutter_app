import 'package:app_decby/others/custome_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/shop_controller.dart';

class ShopView extends GetView<ShopController> {
  const ShopView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Image.asset('assets/images/logo.png', height: 30, width: 30,),
        ),
        title: txtBox(24, Colors.white, "Shop", FontWeight.w900),
        centerTitle: true,
        actions: <Widget>[
          Image.asset('assets/images/sort.png', height: 24,
            width: 24,
            color: secondaryBl,),
          SizedBox(width: 10),
          Image.asset('assets/images/filter.png', height: 24,
            width: 24,
            color: secondaryBl,)
        ],
      ),
      backgroundColor: clrbackground,
      body: Center(
        child: Text(
          'ShopView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
