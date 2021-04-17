import 'package:ecommerce/screens/List_screen.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String category;

  Category(this.category);

  @override
  Widget build(BuildContext context) {
    return ListPage(this.category, '$category Books');
  }
}
