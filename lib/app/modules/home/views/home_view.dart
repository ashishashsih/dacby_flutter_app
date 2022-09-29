import 'package:app_decby/others/custome_widget.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
     HomeView({Key? key}) : super(key: key);

    @override
    TextEditingController nameController = TextEditingController();

    Widget build(BuildContext context)
    {
    return Scaffold(
      backgroundColor: clrbackground,
      appBar: AppBar(
        backgroundColor: clrbackground,
        //leading: Container(width: 450,height: 150, decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/logowithname.png')),color: Colors.amberAccent),),
        title: Container(width: 120,height: 100, decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/logowithname.png'))),),
        actions: <Widget>[
          IconButton(onPressed: ()=>{
            Get.toNamed('/add-address')
          }, icon: Icon(Icons.search,size: 30,color: secondaryPink,)),
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
                  Get.toNamed('/registration')
                  // cartController.cartList.isNotEmpty
                  //     ? Get.toNamed("/cart")
                  //     : Fluttertoast.showToast(
                  //     msg: "No item in the Cart".tr,
                  //     toastLength: Toast.LENGTH_SHORT,
                  //     gravity: ToastGravity.CENTER,
                  //     timeInSecForIosWeb: 1,
                  //     backgroundColor: Colors.red,
                  //     textColor: Colors.white,
                  //     fontSize: 16.0)
                }),
        ),
        SizedBox(width: 10,),
          // SizedBox(width: 10),
          // Image.asset('assets/images/filter.png', height: 24,
          //   width: 24,
          //   color: secondaryBl,)
        ],
      ),
      body:SingleChildScrollView(
        child: Column(children: [
          Container(height: MediaQuery.of(context).size.height/2.5,width: double.infinity,color: secondaryPink,),
          Container(padding: EdgeInsets.all(10),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children:[
              txtBox(23, secondaryBl, "TRENDING POST", FontWeight.w100),
                Container(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, index)
                    {
                      return InkWell(
                        onTap: ()=>{
                          Get.toNamed('/cart-details')
                        },
                        child: Card(elevation: 5,
                            child:Image.asset('assets/images/img_games.png',width: 200,height: 135,)),
                      );
                      // Container(height: 100,width: 150,
                      //   decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //         image: AssetImage('assets/images/img_games.png'))),)
                      // );

                    },),
                ),
                hSizeBox(20),
                txtBox(23, secondaryBl, "MOST VIEWED", FontWeight.w100),
                Container(
                  height: 145,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, index)
                    {
                      return Card(elevation: 5,
                          color: Colors.black,
                          child:Image.asset('assets/images/games_header.png',width: 290,height: 145,));
                      // Container(height: 100,width: 150,
                      //   decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //         image: AssetImage('assets/images/img_games.png'))),)
                      // );

                    },),
                ),
                hSizeBox(20),
                txtBox(23, secondaryBl, "LATEST GAMES", FontWeight.w100),
                Container(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, index)
                    {
                      return
                        Card(
                          child: Container(
                              child: Image.asset('assets/images/img_games.png'),
                              // decoration: BoxDecoration(
                              //   //color: Colors.amberAccent,
                              //     image: DecorationImage(
                              //         image: AssetImage(
                              //             'assets/images/img_games.png'))
                              // )
                          ),
                        );
                      // Container(height: 100,width: 150,
                      //   decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //         image: AssetImage('assets/images/img_games.png'))),)
                      // );

                    },),
                ),
                hSizeBox(20),
                txtBox(23, secondaryBl, "TOP GENRES", FontWeight.w100),
                Container(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, index)
                    {
                      return Card(elevation: 5,
                          child:Image.asset('assets/images/img_games.png',width: 200,height: 135,));
                      // Container(height: 100,width: 150,
                      //   decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //         image: AssetImage('assets/images/img_games.png'))),)
                      // );

                    },),
                ),
                hSizeBox(20),
                hSizeBox(20),

                txtBox(23, secondaryBl, "PRODUCT CATEGORY", FontWeight.w100),
                Container(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, index)
                    {
                      return Card(color: secondaryBlue,
                          elevation: 5,
                          child:Container(child: Text("category Name"),width: 100,height: 120,));
                      // Container(height: 100,width: 150,
                      //   decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //         image: AssetImage('assets/images/img_games.png'))),)
                      // );

                    },),
                ),
                hSizeBox(20),
                Container(
                  height: 500,
                  child: ListView.builder(
                    itemCount: 7,
                    itemBuilder: (context, index)
                    {
                      return Column(mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [Container(
                            //child: Icon(Icons.share,color: Colors.white,),
                              width: 40,height: 40,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/img_game_sq.png')),
                                border: Border.all(color: primaryColor,width: 2),
                                borderRadius: BorderRadius.circular(50.0),
                              )),wSizeBox(10),Text("God of war",style: TextStyle(color: Colors.white,fontSize: 20),)],),
                          hSizeBox(10),
                          Container(height: MediaQuery.of(context).size.height/2,width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.amberAccent,
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/img_game_sq.png')))),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Row(
                                children: [
                                  Icon(Icons.favorite_border,color: secondaryPink,),wSizeBox(10),Text("100",style: TextStyle(color: Colors.white,fontSize: 20),)
                                ],
                              ),Row(
                                children: [
                                  Text("50 Comments- 10 Shares",style: TextStyle(color: Colors.white,fontSize: 12),),
                                ],
                              )],),
                          ),
                          hContainer(),
                          hSizeBox(5),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.favorite_border,color: secondaryPink,),wSizeBox(5),Icon(Icons.chat_bubble_outline_rounded,color: secondaryBlue,),
                                wSizeBox(5),Icon(Icons.share_outlined,color: secondaryBlue,),wSizeBox(5),Icon(Icons.star,color: secondaryBlue,)
                              ],
                            ),
                          ),
                          Container(padding: EdgeInsets.only(left: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  txtBox(18, secondaryBlue, "God of war", FontWeight.bold),
                                  txtBox(16, secondaryBl, "Visit - https://godofwar.in/", FontWeight.normal),
                                  txtBox(14, Colors.white, "#Globalgamers", FontWeight.normal),
                                  hSizeBox(5),
                                  txtBox(10, Colors.white, "12hours Ago", FontWeight.normal),
                                ],
                              ))
                        ],);
                    },),
                ),
            ],),),

          ],crossAxisAlignment: CrossAxisAlignment.start,),
      )
    );
  }
}
