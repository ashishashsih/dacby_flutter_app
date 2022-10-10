import 'package:app_decby/others/custome_widget.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/games_controller.dart';

class GamesView extends GetView<GamesController> {
  GamesController controller = Get.put(GamesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body:
      SingleChildScrollView(
        child: Column(
          children:
          [
            //Image.asset('assets/images/games_header.png',height: 300,)
            Container(
              child: Align(alignment: Alignment.center,
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    txtBox(
                        24, Colors.white, "Buy/ sell Games", FontWeight.bold),
                    txtBox(18, lightText,
                        "Buy/ sell Games any time any where is to de done",
                        FontWeight.bold)
                  ],),),
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(image: DecorationImage(
                  image: AssetImage('assets/images/games_header.png'))),),
            Container(
                child: Obx(() {
                  return SingleChildScrollView(
                      child: GridView.builder(
                        controller: new ScrollController(
                            keepScrollOffset: false),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: .85,
                            mainAxisSpacing: 15,
                            crossAxisCount: 2,
                            crossAxisSpacing: 10),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: ()=>{
                              Get.toNamed('/game-detail-page',arguments: controller.gameList[index].id.toString())
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)),
                                color: clrbackgroundLgt,),

                              child: Column(
                                children: [
                                  Container(height: 170,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/img_games.png')))),
                                  SizedBox(height: 5,),
                                  txtBox(12, Colors.white, controller.gameList[index].name,
                                      FontWeight.bold),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        txtBox(15, Colors.white, "\u{20B9} ${controller.gameList[index].price.toString()}",
                                            FontWeight.bold),
                                        Row(children: [
                                          Icon(Icons.star,
                                            color: Colors.amberAccent,size: 10,),
                                          SizedBox(width: 2),
                                          txtBox(10, Colors.white, controller.gameList[index].rating,
                                              FontWeight.normal)
                                        ],)
                                      ],),
                                  )
                                ],),
                            ),
                          );
                          // InkWell(
                          //   onTap: () => {
                          //     // homeController
                          //     //     .setIndex(homeController.price[index].id),
                          //     // addItemToCart(homeController.price[index], context)
                          //   },
                          //   child: SingleChildScrollView(
                          //     child: Column(
                          //       children: [
                          //         Container(
                          //           height: 100,
                          //           width: 100,
                          //           padding: EdgeInsets.all(10),
                          //           decoration: BoxDecoration(
                          //             //border: Border.all(width: 3,color: categoryList[index].status?primaryColor:Colors.white),
                          //             border: Border.all(
                          //                 width: 3,
                          //                 color: secondaryPurple),
                          //             borderRadius: BorderRadius.circular(10),
                          //             // image: DecorationImage(
                          //             //     image:NetworkImage(imgUrl + homeController.price[index].image),
                          //             //     fit: BoxFit.cover)
                          //           ),
                          //           // child: Image.network(
                          //           //     imgUrl + homeController.price[index].image,fit: BoxFit.fill),
                          //           //Image.network(imgUrl+categoryList[index].image)
                          //         ),
                          //         SizedBox(
                          //           height: 2,
                          //         ),
                          //         Obx(() {
                          //           return Text(
                          //             "Game Name",
                          //             maxLines: 2,
                          //             textAlign: TextAlign.center,
                          //             //categoryList[index].name,
                          //
                          //             style: TextStyle(
                          //                 color: Colors.black,
                          //                 fontFamily: 'Poppins',
                          //                 fontSize: 10.0,
                          //                 fontWeight: FontWeight.bold),
                          //           );
                          //         })
                          //       ],
                          //     ),
                          //   ));
                        },
                        itemCount: controller.gameList.length,
                        physics: NeverScrollableScrollPhysics(),
                      ) //posterList[index].status)
                  );
                }))
          ],),
      ), backgroundColor: clrbackground,
    );
  }
}
