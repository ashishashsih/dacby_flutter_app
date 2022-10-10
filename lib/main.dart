import 'package:app_decby/app/OldDashBoard.dart';
import 'package:app_decby/app/modules/DashBoard/views/dash_board_view.dart';
import 'package:app_decby/app/modules/Games/views/games_view.dart';
import 'package:app_decby/app/modules/Notification/views/notification_view.dart';
import 'package:app_decby/app/modules/Slider/views/slider_view.dart';
import 'package:app_decby/app/modules/home/views/home_view.dart';
import 'package:app_decby/others/custome_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app/modules/Login/views/login_view.dart';
import 'app/routes/app_pages.dart';

bool? isLogin;
void main() async
{
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: clrbackground, // status bar color
  ));
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  isLogin = prefs.getBool("isLogin");
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),

      ),
      //initialRoute: AppPages.INITIAL,
      //home: isLogin == true ? HomeView() : const SliderView(),
      home: isLogin == true ? HomeView() : DashBoardView(),
      getPages: AppPages.routes,
    ),
  );
}
