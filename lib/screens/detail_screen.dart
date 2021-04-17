import 'package:ecommerce/utility/Book.dart';
import 'package:ecommerce/widgets/my_widgtets.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  final Book book;

  Detail(this.book);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  Book book;
  int quantity = 1;

  @override
  void initState() {
    this.book = widget.book;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(this.book.title),
        ),
        body: Container(
          padding: EdgeInsets.only(bottom: 10.0),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset('assets/images/1.png', fit: BoxFit.fitWidth),
                  SizedBox(height: 10.0),
                  MyWidget.text(
                      text: this.book.title.toUpperCase(),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                  MyWidget.text(text: this.book.author + ' (Author)'),
                  SizedBox(height: 20.0),
                  MyWidget.text(text: this.book.description),
                  SizedBox(height: 30.0),
                  Container(
                    padding:
                        EdgeInsets.only(top: 8.0, bottom: 8.0, right: 12.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.black38, width: 0.5)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyWidget.text(
                                text: 'price',
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700),
                            Padding(
                              padding: const EdgeInsets.only(right: 4.0),
                              child: MyWidget.text(
                                  text: '\$ ${this.book.price}',
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                MyWidget.text(
                                    text: 'Qty',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w700),
                                SizedBox(width: 5.0),
                                DropdownButton(
                                  icon: Icon(
                                    Icons.arrow_drop_down_sharp,
                                    color: Colors.black87,
                                  ),
                                  iconSize: 34,
                                  elevation: 16,
                                  style: const TextStyle(color: Colors.black87),
                                  underline: Container(
                                    height: 2,
                                    color: Colors.black87,
                                  ),
                                  onChanged: (value) {
                                    print('clicked at index $value');
                                    setState(() {
                                      this.quantity = value;
                                    });
                                  },
                                  value: this.quantity,
                                  items: [1, 2, 3, 4]
                                      .map((value) => DropdownMenuItem(
                                          child: Text(value.toString()),
                                          value: value))
                                      .toList(),
                                ),
                              ],
                            ),
                            RaisedButton(
                                onPressed: () => print('button clicked!'),
                                child: Text('add to basket'),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40.0, vertical: 20.0),
                                color: Color(0Xff6c757d),
                                textColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
