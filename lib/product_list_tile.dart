import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task3/icon_container.dart';

class ProductListTile extends StatelessWidget {
IconData icon;
Color bgColor;

Color iconColor;
String title;
Widget trailing;
ProductListTile({required this.icon,required this.iconColor,required this.bgColor,required this.title,required this.trailing});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconContainer(icon: icon, bgColor: bgColor, iconColor: iconColor),SizedBox(width: 19,),Text(title),Spacer(),trailing
    ],) ;
  }
}


// ListTile(
//
// leading: IconContainer(icon: icon, bgColor: bgColor, iconColor: iconColor),
// title: Text(title),
// trailing:trailing ,
//
// )