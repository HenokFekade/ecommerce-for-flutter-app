import 'package:flutter/material.dart';

class MyWidget {
  static Widget text({text, fontSize = 16.0, fontWeight = FontWeight.w300}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
