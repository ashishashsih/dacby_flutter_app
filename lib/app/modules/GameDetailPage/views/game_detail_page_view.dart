import 'package:app_decby/others/custome_widget.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';

import '../controllers/game_detail_page_controller.dart';

class GameDetailPageView extends GetView<GameDetailPageController> {
    GameDetailPageController controller=Get.put(GameDetailPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clrbackground,
      appBar: AppBar(
        backgroundColor: clrbackground,
        leading: Icon(Icons.arrow_back_sharp, color: primaryColor,),
        title: Text("Games"),
        actions: <Widget>[
          Icon(Icons.search, size: 30, color: secondaryPink,),
          SizedBox(width: 10,),
          Badge(
            badgeColor: secondaryPink,
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            badgeContent: Text("5",
              //cartController.cartList.length.toString(),
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: primaryColor,
                  size: 30,
                ),
                onTap: () =>
                {
                }),
          ),
          SizedBox(width: 10,),
          // SizedBox(width: 10),
          // Image.asset('assets/images/filter.png', height: 24,
          //   width: 24,
          //   color: secondaryBl,)
        ],
      ),
      body: SingleChildScrollView(
      child: Column(
        children: [
          Container(height: MediaQuery.of(context).size.height/2,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/img_games.png')))),
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
            itemCount: 7,
            itemBuilder: (context, index)
            {
              return Card(elevation: 5,
              child:Image.asset('assets/images/img_games.png',width: 100,height: 130,));
              // Container(height: 100,width: 150,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //         image: AssetImage('assets/images/img_games.png'))),)
              // );

            },),
          ),
          txtBox(12, Colors.white, "AppName",
              FontWeight.bold),
          // Padding(
          //   padding: const EdgeInsets.all(5.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment
          //         .spaceBetween,
          //     children: [
          //       txtBox(15, Colors.white, "\u{20B9} ${controller.gameList[index].price.toString()}",
          //           FontWeight.bold),
          //       Row(children: [
          //         Icon(Icons.star,
          //           color: Colors.amberAccent,size: 10,),
          //         SizedBox(width: 2),
          //         txtBox(10, Colors.white, controller.gameList[index].rating,
          //             FontWeight.normal)
          //       ],)
          //     ],),
          // )
        ]))
    );
  }
}
