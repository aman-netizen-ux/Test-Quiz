import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin : EdgeInsets.all(10), //EdgeInsets is a feature and it has multiple constructors like all , only ,etc.
        child: Text(
          questionText,
          style: TextStyle(fontSize: 35, color: Colors.cyan),
          textAlign: TextAlign.center,
        )
      );
  }
}
