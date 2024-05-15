import 'package:ecommerce/consts/consts.dart';

Widget button_widget({onPressed,title,color,textColor}){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape:  RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0), // Set border radius to 10.0
    ),
      primary: color,
    ),
    onPressed: onPressed, 
    child: "$title".text.color(textColor).make()
    );
}