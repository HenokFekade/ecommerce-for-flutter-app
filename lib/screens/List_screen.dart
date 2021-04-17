import 'package:ecommerce/utility/Book.dart';
import 'package:ecommerce/widgets/my_card.dart';
import 'package:ecommerce/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  final String title;
  final String header;

  ListPage(this.title, this.header);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: Container(
          child: ListView.builder(
            padding: EdgeInsets.all(0.0),
            itemCount: 10,
            itemBuilder: (context, index) {
              Book book = Book('title $index', 'description of title $index',
                  23.34 + index * 2.4, 'nani');
              if (index != 0) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    MyCard(book),
                    (index != 9)
                        ? SizedBox(
                            height: 10.0,
                          )
                        : Container(),
                  ],
                );
              } else {
                return Container(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    bottom: 20.0,
                  ),
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      this.header,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w200,
                        letterSpacing: 1.9,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
