import 'package:ecommerce/screens/category_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/library.jpg'),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Library',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  letterSpacing: 1.7,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          ...this._getCategory(context),
        ],
      ),
    );
  }

  List<ListTile> _getCategory(BuildContext context) {
    return ['Flutter', 'Dart', 'Laravel', 'Django', 'React', 'Vuejs']
        .map(
          (value) => ListTile(
            onTap: () => Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => Category(value),
              ),
            ),
            title: Text(value),
          ),
        )
        .toList();
  }
}
