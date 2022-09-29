import 'package:app_decby/others/custome_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/registration_controller.dart';

class RegistrationView extends GetView<RegistrationController> {
  const RegistrationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: clrbackground,
        //leading: Container(width: 450,height: 150, decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/logowithname.png')),color: Colors.amberAccent),),
        title: Container(width: 120,
          height: 100,
          decoration: BoxDecoration(image: DecorationImage(
              image: AssetImage('assets/images/logowithname.png'))),),
      ),
      body: Container(
          decoration: BoxDecoration(image: DecorationImage(
              image: AssetImage("assets/images/bg_login.png"),
              fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: controller.registrationFormkey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  txtBox(30, Colors.white, "Register", FontWeight.bold),
                  hSizeBox(10),
                  txtBox(15, Colors.white,
                      "Looks like you don't have an account. Let's create a new account for you",
                      FontWeight.normal),
                  hSizeBox(30),
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
                      hintText: 'Email Id',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: BorderSide(
                          color: clrBorder,
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                  hSizeBox(15),
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
                      hintText: 'Full name',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: BorderSide(
                          color: clrBorder,
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                  hSizeBox(15),
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
                      hintText: 'Password',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: BorderSide(
                          color: clrBorder,
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                  hSizeBox(15),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black,
                      hintStyle: TextStyle(color: clrBorder),
                      //border: InputBorder(borderSide: BorderSide(color: Colors.white,width: .1),borderRadius: BorderRadius.circular(50)),
                      border: OutlineInputBorder(borderSide: BorderSide(
                          color: Colors.white, width: .5),
                          borderRadius: BorderRadius.circular(50)),
                      hintText: 'Confirm Password',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: BorderSide(
                          color: clrBorder,
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                  hSizeBox(15),
                  txtBox(12, Colors.white, "I have a refferal code",
                      FontWeight.normal),
                  hSizeBox(15),
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
                      hintText: 'Referral Code (Optional)',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: BorderSide(
                          color: clrBorder,
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Obx(() {
                        return Checkbox(
                          value: controller.isChecked.value,
                          onChanged: (checked) {
                            print(checked);
                            controller.isChecked.value = checked!;
                            print(controller.isChecked.value);
                          },
                        );
                      }),
                      Text("I Agree with the Term and Conditions",
                        style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  Text(
                    "Checking this will subject that user is agreeing with our Terms & conditions regarding data and cookie collection. Please read our Privacy policy for more information.",
                    style: TextStyle(color: Colors.white, fontSize: 12),),
                  hSizeBox(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () =>
                        {
                          Get.toNamed("/refferal-code")
                        },
                        child: Container(
                          width: 320,
                          height: 60,
                          alignment: Alignment.center,
                          child: txtBox(20, Colors.black, "Become a member",
                              FontWeight.w600),
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
          )),
    );
  }
}
