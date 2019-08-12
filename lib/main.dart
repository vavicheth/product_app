import 'package:flutter/material.dart';
import 'package:product_app/ui/homescreen.dart';
import 'package:product_app/ui/hotnews.dart';
import 'package:product_app/ui/productscreen.dart';

void main() => runApp(ProApp());

class ProApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Product Stock",
      home: ProductPage(),
    );
  }
}
