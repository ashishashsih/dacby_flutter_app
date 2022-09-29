import 'dart:ui';

import 'package:app_decby/others/custome_widget.dart';
import 'package:flutter/material.dart';
class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<String> iconList;

  CustomBottomNavigationBar(
      {
        this.defaultSelectedIndex = 0,
        required this.iconList,
        required this.onChange});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  List<String> _iconList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(buildNavBarItem(_iconList[i], i));
    }

    return Row(
      children: _navBarItemList,
    );
  }

  Widget buildNavBarItem(String icon, int index) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 50,
        padding: EdgeInsets.all(3),
        width: MediaQuery.of(context).size.width / _iconList.length,
        decoration: index == _selectedIndex
            ? BoxDecoration(
          //image: DecorationImage(image: AssetImage("assets/images/actBack.png"),fit: BoxFit.cover)
            // border: Border(
            //   top: BorderSide(width: 4, color: secondaryBlue),
            // ),
          gradient: RadialGradient(
            colors: [secondaryBl, clrbackground],
            radius: 0.70,
            focal: Alignment(-0, -1.4),

          ),
          // color: index == _selectedItemIndex ? Colors.green : Colors.white,
        )
            : BoxDecoration(),
        child:index == _selectedIndex?Image.asset(icon+"Act.png",height: 24,width: 24,):Image.asset(icon+".png",height: 18,width: 18,)
        // Icon(
        //   icon,
        //   color: index == _selectedIndex ? Colors.black : Colors.grey,
        // ),
      ),
    );
  }
}