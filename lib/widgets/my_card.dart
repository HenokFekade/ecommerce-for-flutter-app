import 'package:ecommerce/screens/detail_screen.dart';
import 'package:ecommerce/utility/Book.dart';
import 'package:ecommerce/widgets/my_widgtets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Book book;

  MyCard(this.book);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (context) => Detail(this.book),
        ),
      ),
      child: Card(
        elevation: 5.0,
        margin: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/1.png',
              fit: BoxFit.fitWidth,
            ),
            MyWidget.text(
              text: this.book.title.toUpperCase(),
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
            ),
            MyWidget.text(
              text: this.book.description,
              fontWeight: FontWeight.w300,
              fontSize: 16.0,
            ),
            MyWidget.text(
              text: '\$ ${this.book.price}',
              fontWeight: FontWeight.w300,
              fontSize: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}
