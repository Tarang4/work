import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  double? size;
  String? text;
  var weight;
  Color? color;

   AppLargeText({Key? key,this.color,this.size,this.text,this.weight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,style: TextStyle(color: color,fontSize: size,fontWeight: weight),
    );
  }
}
