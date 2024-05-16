import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/widgets/bg_widget.dart';
import 'package:ecommerce/widgets/button_widget.dart';
import 'package:ecommerce/widgets/logo_widget.dart';
import 'package:ecommerce/widgets/textfeild_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgCommon(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              (context.screenHeight*0.1).heightBox,
              applogo(),
              10.heightBox,
              "Login $appname".text.fontFamily(semibold).white.size(14).make(),
              20.heightBox,
              Column(
               
                children: [
                 textFeld_widget(title: "Email",hintText: "Enter your Email"),
                 10.heightBox,
                 textFeld_widget(title: "Password",hintText: "**********"),
                 5.heightBox,
                 Align(
                  alignment: Alignment.centerRight,
                  child: "Forgot password".text.make()),
                  10.heightBox,
                  button_widget(title: "Login",onPressed: (){},color: redColor,textColor: whiteColor).box.width(context.screenWidth-50).make(),
                  10.heightBox,
                  "don't have an accout ? Sign Up".text.make()

                ],
              ).box.rounded.padding(EdgeInsets.all(16)).white.width(context.screenWidth-70).make()




            ],
          ),
        ),
      )
    );  
  }
}