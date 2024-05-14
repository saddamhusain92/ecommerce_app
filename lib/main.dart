import 'package:ecommerce/consts/styles.dart';
import 'package:ecommerce/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import 'pages/splash_screen/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Flutter Demo',
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.transparent,
       appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
       fontFamily: regular,
        useMaterial3: true,
      ),

      home:SplashScreen(),
    );
  }
}

