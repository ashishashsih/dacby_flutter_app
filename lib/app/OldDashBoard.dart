import 'package:app_decby/app/other/CustomBottomNavigationBar.dart';
import 'package:app_decby/others/custome_widget.dart';
import 'package:flutter/material.dart';
class DashBoard extends StatefulWidget
{
  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard>
{
  @override
  Widget build(BuildContext context)
  {
    var selectedItem=0;
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        iconList: [
          'assets/images/icoRid',
          'assets/images/icoController',
          'assets/images/icoAdd',
          'assets/images/icoNotification',
          'assets/images/icoUser',
        ],
        onChange: (val)
        {
          setState(()
          {

            selectedItem = val;
            print("A:${selectedItem}");
            print("B:${val}");
          });
        },
        defaultSelectedIndex: 1,
      ),
      backgroundColor: clrbackground,
      appBar: AppBar(
        backgroundColor: clrbackground,
        leading: Padding(
          padding: EdgeInsets.only(top: 10,bottom: 10),
          child: Image.asset('assets/images/logo.png',height: 30,width: 30,),
        ),
        title: txtBox(24, Colors.white, "Notificaitons", FontWeight.w900),
        centerTitle: true,
        actions: <Widget>[
          Image.asset('assets/images/sort.png',height: 24,width: 24,color: secondaryBl,),
          SizedBox(width: 10),
          Image.asset('assets/images/filter.png',height: 24,width: 24,color: secondaryBl,)
        ],
      ),
      body:
      Center(
        child:getPage(selectedItem)
      ),
    );
  }

  Widget getPage(int index)
  {
    print("C:${index}");
    switch (index)
    {
      case 1:
        print("C:${index}");
        return Container(color: Colors.grey,);
      case 2:
        print("D:${index}");
        return Container(color: Colors.red,);
      default:
        print("E:${index}");
        return Container(color: Colors.green,);
    }
  }
}