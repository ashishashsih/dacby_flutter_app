import 'package:app_decby/others/custome_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController>
{
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bg_login.png"),fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100.0,),
              Image.asset("assets/images/welcome_dacby.png",width: 350,),
              SizedBox(height: 20.0,),
              txtBox(14, Colors.white, "Single Platform  for Gamer Lovers",FontWeight.normal),
              SizedBox(height: 20.0,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    border: Border.all(
                      color: clrBorder,
                      width: .5,
                    )),

                margin: EdgeInsets.all(20),
                child:
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextFormField(
                    style: TextStyle(color: clrBorder),
                    decoration:  InputDecoration(
                      border: InputBorder.none,

                      hintStyle: TextStyle(
                          color: Colors.white
                      ),
                      // border: OutlineInputBorder(
                      //     borderSide: BorderSide(color: Colors.white, width: 0.3),
                      //   borderRadius: BorderRadius.circular(30)
                      // ),
                      //labelText: 'Email',
                      hintText: 'Enter your E-mail address',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              InkWell(
                onTap: ()=>{
                  print("i am here"),
                  Get.toNamed("/notification")
                },
                child: Container(
                    width: 320,
                    height: 60,
                    alignment: Alignment.center,
                    child: txtBox(25, Colors.black, "Let's get started",FontWeight.w600),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      gradient: lnrGradient,
                    ),
                  

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
