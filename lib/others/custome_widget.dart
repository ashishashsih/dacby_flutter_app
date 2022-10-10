import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget txtBox(double fontSize,Color fontColor,String text,FontWeight fontWeight)
{
  return Text(text,style: TextStyle(fontSize: fontSize,color: fontColor,fontWeight: fontWeight),textAlign: TextAlign.center,);
}

Widget hSizeBox(double height)
{
  return SizedBox(height: height);
}

Widget wSizeBox(double width)
{
  return SizedBox(width: width);
}

 InputDecoration formFieldDeco()
{
  return InputDecoration(
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
  );
}

InputDecoration formFieldDecoTtl(String hintText)
{
  return InputDecoration(
    filled: true,
    fillColor: Colors.black,
    hintStyle: TextStyle(color: clrBorder),
    //border: InputBorder(borderSide: BorderSide(color: Colors.white,width: .1),borderRadius: BorderRadius.circular(50)),
    border: OutlineInputBorder(borderSide: BorderSide(
        color: Colors.white, width: .5),
        borderRadius: BorderRadius.circular(50)),
    hintText: hintText,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: BorderSide(
        color: clrBorder,
        width: 0.5,
      ),
    ),
  );
}

Widget stapper(String txt,bool status,BuildContext context)
{
  return Row(
    children: [
    Container(width: MediaQuery.of(context).size.width/10,color: status?secondaryPink:secondaryBlue,height: 2,),Icon(status?Icons.radio_button_on_sharp:Icons.radio_button_unchecked_sharp,color: status?secondaryPink:secondaryBlue),Text(txt,style: TextStyle(color: status?secondaryPink:secondaryBlue,fontSize: 12),)],);
}

Color clrBorder=Color(0xFC4B6FB2);
Color clrDBorder=Color(0xFC274479);
Color clrbackground=Color(0xFC000000);
Color clrbackgroundLgt=Color(0xFF030F26);

Color primaryColor=Color(0xFF4B6FB2);
//Color secondaryPink=Color(0xFFEC30A8);
Color secondaryPink=Color(0xFFEF6BC2);
Color secondaryBlue=Color(0xFF9AECF6);
Color secondaryPurple=Color(0xFF483FEB);
Color secondaryBl=Color(0xFC3758FF);
Color lightText=Color(0xFC909BD0);
Color hrulerText=Color(0xFC656565);

Widget hContainer()
{
  return Container(height:.5,color: hrulerText);
}

Gradient lnrGradient=LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    secondaryPink,
    secondaryBlue
  ],
);