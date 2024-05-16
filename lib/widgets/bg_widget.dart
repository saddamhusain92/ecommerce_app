import 'package:ecommerce/consts/consts.dart';

Widget bgCommon({Widget?  child}){
   return Container(
     decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(imgBackground),fit: BoxFit.fill),
     ),
     child:child
   ); 
}
