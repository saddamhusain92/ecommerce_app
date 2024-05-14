import 'package:ecommerce/consts/colors.dart';
import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/pages/login/login_page.dart';
import 'package:ecommerce/widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

void navigatePage(){
  Future.delayed(Duration(seconds: 3),(){
  Get.to(()=>LoginScreen());
  });
}
  @override
  void initState() {
     navigatePage();
    // TODO: implement initState
    super.initState();
   
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(children: [
        Image.asset(icSplashBg,width: 300,),
        20.heightBox,
        applogo(),
        10.heightBox,
        appname.text.fontFamily(bold).white.size(22).make(),
        5.heightBox,
         appversion.text.fontFamily(semibold).white.make(),
         Spacer(),
        credits.text.fontFamily(semibold).white.make(),
        20.heightBox
        ]),  
      ),
    );
  }
}