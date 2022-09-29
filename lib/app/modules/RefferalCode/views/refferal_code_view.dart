import 'package:app_decby/others/custome_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/refferal_code_controller.dart';

class RefferalCodeView extends GetView<RefferalCodeController> {
  RefferalCodeController controller=Get.put(RefferalCodeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   leading: Padding(
      //     padding: EdgeInsets.only(top: 10, bottom: 10),
      //     child: Image.asset('assets/images/logo.png', height: 30, width: 30,),
      //   ),
      //   title: txtBox(24, Colors.white, "Create Post", FontWeight.w900),
      //   centerTitle: true,
      //
      // ),
      backgroundColor: clrbackground,
      body: Form(
        key: controller.addRefferalFormkey,
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(image: DecorationImage(
              image: AssetImage("assets/images/bg_login.png"),
              fit: BoxFit.cover)),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              hSizeBox(150),
              txtBox(32, Colors.white, "Have a refferal code", FontWeight.bold),
              hSizeBox(10),

              hSizeBox(10),
              txtBox(16, Colors.white, "Enter your referral code below and follow the instructions", FontWeight.normal),
              hSizeBox(10),


              hSizeBox(10),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black,
                  hintStyle: TextStyle(color: clrBorder),
                  //border: InputBorder(borderSide: BorderSide(color: Colors.white,width: .1),borderRadius: BorderRadius.circular(50)),
                  border: OutlineInputBorder(borderSide: BorderSide(
                      color: Colors.white, width: .5),
                      borderRadius: BorderRadius.circular(50)),
                  //hintText: 'Title',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: clrBorder,
                      width: 0.5,
                    ),
                  ),
                ),
              ),
              hSizeBox(15),
              //Row(children: [Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.blueAccent)),child: Text("Back"),),],)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () =>
                    {
                      Get.toNamed("/notification")
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width/2.5,
                      alignment: Alignment.center,
                      child: txtBox(20, Colors.black, "Confirm",
                          FontWeight.w600),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        gradient: lnrGradient,
                      ),
                    ),
                  ),
                  wSizeBox(25),
                  InkWell(
                    onTap: () =>
                    {
                      Get.toNamed("/notification")
                    },
                    child:
                    Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width/2.5,
                        alignment: Alignment.center,
                        child: txtBox(20, Colors.white, "Skip",
                            FontWeight.w600),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),border: Border.all(color: Colors.blueAccent))
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(50.0),
                      //   gradient: lnrGradient,
                      // ),
                    ),
                  ),

                ],
              ),

            ],),

        ),
      ),
    );
  }
}
