import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/consts/styles.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Text(
        "home",
        style: TextStyle(fontSize: 40),
      )),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon: Image.asset(icHome,width: 20,), label: "Home"),
        BottomNavigationBarItem(icon:  Image.asset(icCategories,width: 20,), label: "Categories"),
        BottomNavigationBarItem(icon:  Image.asset(icCart,width: 20,), label: "Cart"),
        BottomNavigationBarItem(icon:  Image.asset(icProfile,width: 20,), label: "Profile"),
      ]),
    );
  }
}
