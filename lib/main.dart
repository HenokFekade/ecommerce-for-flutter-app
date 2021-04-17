import 'package:ecommerce/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(Ecommerce());

class Ecommerce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
