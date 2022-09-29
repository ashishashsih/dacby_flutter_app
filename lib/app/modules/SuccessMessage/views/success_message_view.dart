import 'package:app_decby/others/custome_widget.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/success_message_controller.dart';

class SuccessMessageView extends GetView<SuccessMessageController> {
  const SuccessMessageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: clrbackground,
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset('assets/images/success.png',width: MediaQuery.of(context).size.width/1.5,height: MediaQuery.of(context).size.width/1.5,),
            txtBox(22, Colors.white, "Your order has been successfully placed", FontWeight.bold),
            hSizeBox(40),
            hContainer(),
            hSizeBox(15),
            txtBox(17, secondaryBlue, "Share with your friends", FontWeight.bold),
            hSizeBox(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Icon(Icons.share,color: Colors.white,),
                    width: 40,height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: primaryColor),
                  borderRadius: BorderRadius.circular(50.0),
                )),
                wSizeBox(10),
                Container(
                  width: 280,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Icon(Icons.facebook_sharp,size: 40,),
                    Icon(Icons.facebook_sharp,size: 40,),
                    Icon(Icons.facebook_sharp,size: 40,),
                    Icon(Icons.facebook_sharp,size: 40,),
                    Icon(Icons.facebook_sharp,size: 40,),
                  ],),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    gradient: lnrGradient,
                  ),
                ),
              ],
            ),
hSizeBox(20),
hContainer(),
            hSizeBox(20),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width/2.5,
              alignment: Alignment.center,
              child: txtBox(20, Colors.white, "Back to Shop",
                  FontWeight.normal),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                gradient: lnrGradient,
              ),
            )
        ],),
      ),
    );
  }
}
