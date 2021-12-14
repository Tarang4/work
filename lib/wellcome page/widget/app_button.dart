import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  double? width;
  IconData? iconn;
  Color? color;
   AppButton({Key? key,this.width,this.iconn,this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30)
      ),
      child: Icon(iconn,color: Colors.white,),
    );
  }
}
