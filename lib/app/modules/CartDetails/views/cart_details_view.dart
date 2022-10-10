import 'package:app_decby/others/custome_widget.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cart_details_controller.dart';

class CartDetailsView extends GetView<CartDetailsController> {
  const CartDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
      body: 
      Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [stapper("Cart", true,context),stapper("Address", true,context),stapper("Payment", false,context)],),
        Padding(
          padding: const EdgeInsets.only(top: 20,left: 20),
          child: Row(children: [Image.asset('assets/images/img_game_sq.png',width: 200,height: 200,),
            Container(padding: EdgeInsets.only(left: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    txtBox(22, Colors.white, "God of war", FontWeight.bold),
                    txtBox(14, Colors.white, "Sold by: Company Name", FontWeight.normal),
                    Row(children: [Container(padding: EdgeInsets.all(2), color: secondaryBl, child: Text("PS1",style: TextStyle(color: Colors.white))),wSizeBox(10),Container(padding: EdgeInsets.all(2), color: secondaryBl, child: Text("PS2",style: TextStyle(color: Colors.white)))],),
                    hSizeBox(5),
                    txtBox(10, Colors.white, "12hours Ago", FontWeight.normal),
                  ],
                ))
          ],),
        )
      ],),
    );
  }
}
