import 'package:ecommerce/consts/consts.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

Widget textFeld_widget({String? title,hintText,controller}){
  return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      "$title".text.color(redColor).fontFamily(semibold).size(16).make(),
      10.heightBox,
      TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "$hintText",
          hintStyle: TextStyle(fontFamily: semibold,color: textfieldGrey),
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: redColor)

            )
        ),
      )
    ],
  );
}