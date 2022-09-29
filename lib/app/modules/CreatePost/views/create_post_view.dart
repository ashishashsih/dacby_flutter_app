import 'package:app_decby/others/custome_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/create_post_controller.dart';

class CreatePostView extends GetView<CreatePostController> {
  CreatePostController controller=Get.put(CreatePostController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Image.asset('assets/images/logo.png', height: 30, width: 30,),
        ),
        title: txtBox(24, Colors.white, "Create Post", FontWeight.w900),
        centerTitle: true,

      ),
      backgroundColor: clrbackground,
      body: Form(
        key: controller.addPostFormkey,
        child: Container(
          margin: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children:[
              txtBox(12, Colors.white, "Preview", FontWeight.bold),
              hSizeBox(10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(height: MediaQuery.of(context).size.width/3.5,width: MediaQuery.of(context).size.width/3.5,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.blueAccent)),child: Icon(Icons.add,size: 55,color: Colors.white,),),
                Container(height: MediaQuery.of(context).size.width/3.5,width: MediaQuery.of(context).size.width/3.5,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.blueAccent)),child: Icon(Icons.add,size: 55,color: Colors.white,),),
                Container(height: MediaQuery.of(context).size.width/3.5,width: MediaQuery.of(context).size.width/3.5,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.blueAccent)),child: Icon(Icons.add,size: 55,color: Colors.white,),),
              ],),
            hSizeBox(15),
            hContainer(),
            hSizeBox(10),
            txtBox(12, Colors.white, "Title", FontWeight.bold),
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
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: clrBorder,
                        width: 0.5,
                      ),
                    ),
                  ),
                ),
                hSizeBox(15),
                hContainer(),
                hSizeBox(10),
                txtBox(12, Colors.white, "What's in your mind ?", FontWeight.bold),
                hSizeBox(10),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  minLines: 5,
                  maxLines: 6,
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
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: clrBorder,
                        width: 0.5,
                      ),
                    ),
                  ),
                ),

                hSizeBox(15),
                hContainer(),
                hSizeBox(10),
                txtBox(12, Colors.white, "Enter a few tags", FontWeight.bold),
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
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: clrBorder,
                        width: 0.5,
                      ),
                    ),
                  ),
                ),

                hSizeBox(15),
                hContainer(),
                hSizeBox(10),
                txtBox(12, Colors.white, "Enter URL", FontWeight.bold),
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
                      borderRadius: BorderRadius.circular(5.0),
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
                        width: 100,
                        alignment: Alignment.center,
                        child: txtBox(20, Colors.white, "Back",
                            FontWeight.w600),
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
                        width: 100,
                        alignment: Alignment.center,
                        child: txtBox(20, Colors.black, "Upload",
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

        ),
      ),
    );
  }
}
