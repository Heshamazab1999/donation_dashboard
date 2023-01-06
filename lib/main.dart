import 'package:donation_dashboard/constants.dart';
import 'package:donation_dashboard/routes/app_route.dart';
import 'package:donation_dashboard/routes/app_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: K.mainColor, // navigation bar color
    statusBarColor: K.mainColor, // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.homeScreen,
      getPages: AppScreens.screens,
    );
  }
}
