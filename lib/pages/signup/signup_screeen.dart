import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/pages/login/login_page.dart';
import 'package:ecommerce/widgets/bg_widget.dart';
import 'package:ecommerce/widgets/button_widget.dart';
import 'package:ecommerce/widgets/logo_widget.dart';
import 'package:ecommerce/widgets/textfeild_widget.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return bgCommon(
        child: Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogo(),
              10.heightBox,
              "Login $appname".text.fontFamily(semibold).white.size(14).make(),
              20.heightBox,
              Column(
                children: [
                  textFeld_widget(title: "Email", hintText: "Enter your Name"),
                  10.heightBox,
                  textFeld_widget(title: "Email", hintText: "Enter your Email"),
                  10.heightBox,
                  textFeld_widget(title: "Password", hintText: "**********"),
                  5.heightBox,
                
                  10.heightBox,
                  button_widget(
                          title: "Sign Up",
                          onPressed: () {},
                          color: redColor,
                          textColor: whiteColor)
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      "don't have an accout ?".text.make(),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ))
                    ],
                  )
                ],
              )
                  .box
                  .rounded
                  .padding(EdgeInsets.all(16))
                  .white
                  .width(context.screenWidth - 70)
                  .make()
            ],
          ),
        ),
      ),
    ));
  }
}
