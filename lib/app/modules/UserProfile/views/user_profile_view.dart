import 'package:app_decby/others/custome_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:slide_switcher/slide_switcher.dart';

import '../controllers/user_profile_controller.dart';

class UserProfileView extends GetView<UserProfileController>
{
  UserProfileController controller=Get.put(UserProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Image.asset('assets/images/logo.png', height: 30, width: 30,),
        ),
        title: txtBox(24, Colors.white, "User Profile", FontWeight.w900),
        centerTitle: true,
        actions: <Widget>[PopupMenuButton(
          icon: Icon(Icons.more_horiz),
      color: clrbackground,
      itemBuilder: (context) => [
    PopupMenuItem(
    child: ListTile(leading: Icon(Icons.add,color: Colors.white,),title: Text("One",style: TextStyle(color: Colors.white),),),
    value: 1,
    ),
    PopupMenuItem(
    child: Text("Second"),
    value: 2,
    )
        ]
      )]),
      backgroundColor: clrbackground,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          width: double.infinity,color: clrbackground,height: 215,
          child: Stack(children: [
            Container(width: double.infinity,color: secondaryBl,height: 180,child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                    width: 100,height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/img_game_sq.png')),
                      border: Border.all(color: secondaryPink,width: 2),
                      borderRadius: BorderRadius.circular(50.0),
                    )),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        txtBox(20, Colors.white, "Hello, Mr. Ashwin", FontWeight.bold),
                        hSizeBox(5),
                        txtBox(14, Colors.white, "post", FontWeight.normal),
                        hSizeBox(5),
                        txtBox(14, Colors.white, "32165487", FontWeight.normal),
                        ]
                  ),
                ),
              ],

            ),),
            Positioned(bottom: 0,right: 0,child: Row(children: [
              Container(
                margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    //border: Border.all(color: secondaryPink,width: 1),
                    borderRadius: BorderRadius.circular(30.0),gradient: lnrGradient
                  ),
                  width: 150,height: 80,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text("Dacby Wallet",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 12),),
                      ),
                      hContainer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Icon(Icons.account_balance_wallet_outlined,color: Colors.black,size: 30,),
                        wSizeBox(5),
                        Column(
                              children: [
                              txtBox(18, Colors.white, "Rs. 3500", FontWeight.bold),
                              txtBox(12, Colors.black, "Know more", FontWeight.normal),
                            ]
                        )],)
                    ],
                  )),
              Container(
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      //border: Border.all(color: secondaryPink,width: 1),
                      borderRadius: BorderRadius.circular(30.0),color: clrDBorder
                  ),
                  width: 150,height: 80,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text("Digital Asset",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 12),),
                      ),
                      hContainer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Icon(Icons.currency_bitcoin,color: Colors.white,size: 30,),
                          wSizeBox(5),
                          Column(
                              children: [
                                txtBox(18, Colors.white, "100+", FontWeight.bold),
                                txtBox(12, Colors.white, "Take a look", FontWeight.normal),
                              ]
                          )],)
                    ],
                  ))
            ],)),
          ],),
        ),
          hSizeBox(10),

          SlideSwitcher(
            //slidersBorder: Border.all(color: secondaryPink),
            containerBorder: Border.all(color: secondaryPink),
            children: [
              Text(
                'My Post',
                // style: TextStyle(
                //     fontWeight: switcherIndex2 == 0
                //         ? FontWeight.w500
                //         : FontWeight.w400),
              ),
              Text(
                'My Prod',
                // style: TextStyle(
                //     fontWeight: switcherIndex2 == 1
                //         ? FontWeight.w500
                //         : FontWeight.w400),
              ),
            ],
            //onSelect: //(int index) => setState(() => switcherIndex2 = index),
            containerHeight: 40,
            containerWight: MediaQuery.of(context).size.width/1,
            onSelect: (int index) {  },
          ),
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
                          crossAxisCount: 3,
                          crossAxisSpacing: 10),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: ()=>{
                            Get.toNamed('/game-detail-page',arguments: controller.gameList[index].id.toString())
                          },
                          child: Column(
                            children: [
                              Container(
                                  height: 125,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/img_games.png')))),
                            ],),
                        );
                      },
                      itemCount: controller.gameList.length,
                      physics: NeverScrollableScrollPhysics(),
                    ) //posterList[index].status)
                );
              }))
        ],)
    );
  }
}
