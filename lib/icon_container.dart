import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  IconData icon;
  Color bgColor;
  Color iconColor;
  bool hasBorder;
  IconContainer({super.key, required this.icon,required this.bgColor,required this.iconColor, this.hasBorder=false});

  @override
  Widget build(BuildContext context) {
    return Container(
width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border:  Border.all(color: hasBorder?bgColor.withAlpha(200):bgColor)
      ),
      child:  Icon(icon,color: iconColor,size: 27,),
    );
  }
}
