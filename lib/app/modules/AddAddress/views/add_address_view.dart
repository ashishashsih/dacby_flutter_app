import 'package:app_decby/others/custome_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_address_controller.dart';

class AddAddressView extends GetView<AddAddressController> {
  AddAddressController controller=Get.put(AddAddressController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () =>
              {
                Get.toNamed("/success-message")
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.center,
                child: txtBox(20, Colors.black, "Add Address",
                    FontWeight.w600),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  gradient: lnrGradient,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        // backgroundColor: Colors.transparent,elevation: 0,automaticallyImplyLeading: false,
        // flexibleSpace: SizedBox(width: double.infinity,height: 70,child: Stack(children: [
        //   Align( alignment: Alignment.bottomLeft,child: Image.asset('assets/images/logo.png', height: 35, width: 40,fit: BoxFit.contain,)),
        //   Align(alignment: Alignment.bottomCenter, child: txtBox(24, Colors.white, "Create Post", FontWeight.normal))
        // ],),),
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back_sharp,size: 36,),
        title: txtBox(24, Colors.white, "Create Post", FontWeight.normal),
        centerTitle: true,
      ),
      backgroundColor: clrbackground,
      body: Form(
        key: controller.addAddressFormkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                width: MediaQuery.of(context).size.width,height: 60,child: Text("CONTACT DETAILS",style: TextStyle(color: Colors.white,fontSize: 20),),color: secondaryBl,),
              Container(
                margin: EdgeInsets.all(20),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    hSizeBox(10),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white),
                      decoration: formFieldDecoTtl("Name"),
                    ),

                    hSizeBox(10),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white),
                      decoration: formFieldDecoTtl("Phone Number"),
                    ),

                    hSizeBox(10),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white),
                      decoration: formFieldDecoTtl("House No. and Street"),
                    ),

                    hSizeBox(10),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white),
                      decoration: formFieldDecoTtl("Area and Locality"),
                    ),
                    hSizeBox(10),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white),
                      decoration: formFieldDecoTtl("Pincode"),
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
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                style: TextStyle(color: Colors.white),
                                decoration: formFieldDecoTtl("State"),
                              ),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),border: Border.all(color: Colors.blueAccent))
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(50.0),
                            //   gradient: lnrGradient,
                            // ),
                          ),
                        ),
                        wSizeBox(25),
                        InkWell(
                          onTap: () =>
                          {
                            Get.toNamed("/notification")
                          },
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width/2.5,
                            alignment: Alignment.center,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              style: TextStyle(color: Colors.white),
                              decoration: formFieldDecoTtl("City/District"),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              gradient: lnrGradient,
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],),

              ),
              Container(alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                width: MediaQuery.of(context).size.width,height: 60,child: Row(
                  children: [
                    Obx(() {
                      return Checkbox(
                        shape: CircleBorder(),
                          fillColor: MaterialStateProperty.all(Colors.black),
                        value: controller.isChecked.value,
                        onChanged: (checked) {
                          print(checked);
                          controller.isChecked.value = checked!;
                          print(controller.isChecked.value);
                        },
                      );
                    }),
                    Text("Make is my defalult",
                      style: TextStyle(color: Colors.white),)
                  ],
                ),color: secondaryBl,)
            ],
          ),
        ),
      ),
    );
  }
}
