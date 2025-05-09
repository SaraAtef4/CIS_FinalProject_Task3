import 'package:flutter/material.dart';
import 'package:task3/product_details_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
