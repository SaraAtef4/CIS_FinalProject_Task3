import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageChoise extends StatelessWidget {
String imagePath;
bool isSelected;
ImageChoise({required this.imagePath,this.isSelected=false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
            border: Border.all(color: isSelected?Color(0xffb7465d):Colors.grey.shade300)
      ),

      child: Image.asset(imagePath,fit: BoxFit.fill,),
    );
  }
}
